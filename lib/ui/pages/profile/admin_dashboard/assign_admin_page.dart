import 'package:auto_route/annotations.dart';
import 'package:flashcards/bloc/profile/manage_user_roles/manage_user_roles_cubit.dart';
import 'package:flashcards/bloc/profile/manage_user_roles/manage_user_roles_state.dart';
import 'package:flashcards/data/repositories/users/user_roles_repository.dart';
import 'package:flashcards/ui/constants/styles.dart';
import 'package:flashcards/ui/widgets/core/bloc_buttons/bloc_button.dart';
import 'package:flashcards/ui/widgets/core/bloc_text_field.dart';
import 'package:flashcards/utils/firebase_error_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flashcards/l10n/app_localizations.dart';

@RoutePage()
class AssignAdminPage extends StatelessWidget {
  const AssignAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ManageUserRolesCubit(
            userRolesRepo: context.read<UserRolesRepository>(),
          ),
      child: _PageView(),
    );
  }
}

class _PageView extends StatefulWidget {
  const _PageView({super.key});

  @override
  State<_PageView> createState() => _PageViewState();
}

class _PageViewState extends State<_PageView> {
  late final TextEditingController _emailCont;

  @override
  void initState() {
    super.initState();
    _emailCont = TextEditingController();
  }

  @override
  void dispose() {
    _emailCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    void onAssignAdmin() {
      context.read<ManageUserRolesCubit>().setAdminRole(_emailCont.text);
    }

    return BlocListener<ManageUserRolesCubit, ManageUserRolesState>(
      listenWhen:
          (previous, current) =>
              current is ManageUserRolesSuccess ||
              current is ManageUserRolesError,
      listener: (context, state) {
        switch (state) {
          case ManageUserRolesSuccess():
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Successfully assigned admin role")),
            );
            return;
          case ManageUserRolesError(:final error):
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(extractErrorMessage(error))));
            return;
          default:
        }
      },
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: horizontalScreenPadding),
          child: Column(
            spacing: 25,
            children: [
              BlocTextField<ManageUserRolesCubit, ManageUserRolesState>(
                errorSelector:
                    (state) =>
                        state is ManageUserRolesFormInvalid
                            ? state.errors['email']
                            : null,
                textEditingController: _emailCont,
                labelText: l10n.basicText_email,
              ),
              BlocButton<ManageUserRolesCubit, ManageUserRolesState>.small(
                textString: "Assign Admin",
                onPressed: (context) => onAssignAdmin(),
                isLoadingState: (state) => state is ManageUserRolesLoading,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
