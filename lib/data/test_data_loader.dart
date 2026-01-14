// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flashcards/data/services/api/dto/flashcards/flashcard/flashcard_dto.dart';
// import 'package:flashcards/data/services/api/dto/flashcards/pack/pack_dto.dart';
// import 'package:flashcards/utils/typedefs.dart';
//
// class TestDataLoader {
//   // singleton
//   TestDataLoader._();
//
//   static final TestDataLoader _instance = TestDataLoader._();
//
//   factory TestDataLoader() => _instance;
//
//   CollectionReference<JsonMap> get _packs => FirebaseFirestore.instance.collection('packs');
//   CollectionReference<JsonMap> get _flashcards => FirebaseFirestore.instance.collection('flashcards');
//
//   DocumentReference<JsonMap> generatePackReference() {
//     return _packs.doc();
//   }
//
//   Future<void> createTestPackWithFlashcards() async {
//     final packRef = generatePackReference();
//
//     final List<FlashcardDto> flashcards = [
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What principle suggests that each software module should have only one reason to change?',
//         answer: 'Single Responsibility Principle',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What software development practice involves automatically testing, building, and integrating code with every change?',
//         answer: 'Continuous Integration',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What design pattern restricts a class to only one instance and provides a global point of access to it?',
//         answer: 'Singleton Pattern',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What is the process of modifying code to improve its structure without changing its behavior?',
//         answer: 'Refactoring',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What methodology involves writing tests before writing the actual code?',
//         answer: 'Test-Driven Development',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What type of function has no side effects and returns the same result given the same input?',
//         answer: 'Pure Function',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What software concept involves organizing code so that each part addresses a separate concern?',
//         answer: 'Separation of Concerns',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What is the term for converting source code into machine code?',
//         answer: 'Compilation',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What architecture style structures an application as a collection of independent services?',
//         answer: 'Microservices',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What principle in OOP suggests that objects should be replaceable with instances of their subtypes without altering correctness?',
//         answer: 'Liskov Substitution Principle',
//       ),
//     ];
//
//     final List<String> flashcardIds = [];
//     for (var fc in flashcards) {
//       final docRef = _flashcards.doc();
//       await docRef.set(fc.toJson());
//       flashcardIds.add(docRef.id);
//     }
//
//     final pack = PackDto(
//       id: null,
//       name: "Software engineering",
//       flashcardIds: flashcardIds,
//     );
//     await packRef.set(pack.toJson());
//   }
//
//   Future<void> createCardiologyTestPackWithFlashcards() async {
//     final packRef = generatePackReference();
//
//     final List<FlashcardDto> flashcards = [
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'What is the most common cause of myocardial infarction?',
//         answer: 'Atherosclerosis',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'Which biomarker is most specific for myocardial infarction?',
//         answer: 'Troponin',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'What ECG finding is characteristic of a STEMI?',
//         answer: 'ST-segment elevation',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What heart sound is associated with heart failure due to volume overload?',
//         answer: 'S3 gallop',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'What medication is commonly used to lower LDL cholesterol?',
//         answer: 'Statins',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'Which valve is affected in mitral regurgitation?',
//         answer: 'Mitral valve',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'What is the first-line treatment for stable angina?',
//         answer: 'Beta-blockers',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What condition is characterized by a pericardial friction rub and chest pain?',
//         answer: 'Pericarditis',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'Which congenital heart defect results in a "boot-shaped" heart on X-ray?',
//         answer: 'Tetralogy of Fallot',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What is the most common cause of sudden cardiac death in young athletes?',
//         answer: 'Hypertrophic cardiomyopathy',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What is the term for chest pain due to reduced blood flow to the heart?',
//         answer: 'Angina pectoris',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'Which drug is a first-line anticoagulant for atrial fibrillation?',
//         answer: 'Warfarin or DOACs (e.g., apixaban)',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What heart condition causes a "machinery" murmur in infants?',
//         answer: 'Patent ductus arteriosus (PDA)',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What diagnostic test is used to assess cardiac ejection fraction?',
//         answer: 'Echocardiogram',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'Which antihypertensive is also beneficial in heart failure with reduced EF?',
//         answer: 'ACE inhibitors',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question: 'What physical exam finding is seen in aortic stenosis?',
//         answer:
//             'Crescendo-decrescendo systolic murmur at the right upper sternal border',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What syndrome includes hypertension, hypokalemia, and metabolic alkalosis?',
//         answer: 'Conn’s syndrome (Primary hyperaldosteronism)',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'Which rhythm has no identifiable P waves and irregularly irregular QRS complexes?',
//         answer: 'Atrial fibrillation',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What is the name of the scoring system used to assess stroke risk in AF?',
//         answer: 'CHA₂DS₂-VASc score',
//       ),
//       FlashcardDto(
//         packId: packRef.id,
//         question:
//             'What causes Beck’s triad: hypotension, muffled heart sounds, and JVD?',
//         answer: 'Cardiac tamponade',
//       ),
//     ];
//
//     final List<String> flashcardIds = [];
//     for (var fc in flashcards) {
//       final docRef = _flashcards.doc();
//       await docRef.set(fc.toJson());
//       flashcardIds.add(docRef.id);
//     }
//
//     final pack = PackDto(
//       id: null,
//       name: "Cardiology",
//       flashcardIds: flashcardIds,
//     );
//     await packRef.set(pack.toJson());
//   }
//
//   Future<void> createNeurologyTestPackWithFlashcards() async {
//     final packRef = generatePackReference();
//
//     final List<FlashcardDto> flashcards = [
//       FlashcardDto(
//         question: 'What is the most common cause of ischemic stroke?',
//         answer: 'Thromboembolism',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What condition is characterized by progressive memory loss and cognitive decline?',
//         answer: 'Alzheimer’s disease',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the first-line treatment for status epilepticus?',
//         answer: 'Benzodiazepines (e.g., lorazepam)',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which disease presents with resting tremor, rigidity, and bradykinesia?',
//         answer: 'Parkinson’s disease',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the diagnostic test of choice for subarachnoid hemorrhage?',
//         answer: 'CT scan without contrast',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What condition presents with unilateral facial paralysis sparing the forehead?',
//         answer: 'Stroke',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What autoimmune disease is characterized by fluctuating muscle weakness?',
//         answer: 'Myasthenia Gravis',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the antidote for benzodiazepine overdose?',
//         answer: 'Flumazenil',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What classic triad is associated with normal pressure hydrocephalus?',
//         answer: 'Gait disturbance, urinary incontinence, dementia',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What syndrome is caused by infarction of the posterior inferior cerebellar artery?',
//         answer: 'Lateral medullary syndrome (Wallenberg syndrome)',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the most common primary brain tumor in adults?',
//         answer: 'Glioblastoma multiforme',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which demyelinating disease presents with optic neuritis and relapsing symptoms?',
//         answer: 'Multiple sclerosis',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What condition causes ascending paralysis and is often post-infectious?',
//         answer: 'Guillain-Barré syndrome',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What medication is used to treat absence seizures?',
//         answer: 'Ethosuximide',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which neurodegenerative disease presents with both upper and lower motor neuron signs?',
//         answer: 'Amyotrophic lateral sclerosis (ALS)',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What condition presents with a sudden, severe "thunderclap" headache?',
//         answer: 'Subarachnoid hemorrhage',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which neurotransmitter is decreased in Alzheimer’s disease?',
//         answer: 'Acetylcholine',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the treatment for trigeminal neuralgia?',
//         answer: 'Carbamazepine',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the name of the condition with demyelination of the central pons?',
//         answer: 'Central pontine myelinolysis',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What causes intention tremor and dysmetria?',
//         answer: 'Cerebellar lesion',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What kind of seizure involves both hemispheres and results in a loss of consciousness?',
//         answer: 'Generalized tonic-clonic seizure',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the hallmark histologic finding in Parkinson’s disease?',
//         answer: 'Lewy bodies',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which type of stroke is most often caused by atrial fibrillation?',
//         answer: 'Embolic stroke',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for inability to perform purposeful movements despite intact motor function?',
//         answer: 'Apraxia',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which area of the brain is affected in expressive aphasia?',
//         answer: 'Broca’s area',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What condition features hemiparesis and contralateral facial weakness after stroke?',
//         answer: 'Internal capsule stroke',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which disorder is characterized by brief, recurrent episodes of vertigo triggered by head movement?',
//         answer: 'Benign paroxysmal positional vertigo (BPPV)',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the most common cause of intracerebral hemorrhage?',
//         answer: 'Hypertension',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What test is most useful for diagnosing temporal arteritis?',
//         answer: 'Temporal artery biopsy',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which condition is treated with acetylcholinesterase inhibitors like donepezil?',
//         answer: 'Alzheimer’s disease',
//         packId: packRef.id,
//       ),
//
//     ];
//
//     final List<String> flashcardIds = [];
//     for (var fc in flashcards) {
//       final docRef = _flashcards.doc();
//       await docRef.set(fc.toJson());
//       flashcardIds.add(docRef.id);
//     }
//
//     final pack = PackDto(
//       id: null,
//       name: "Neurology",
//       flashcardIds: flashcardIds,
//     );
//     await packRef.set(pack.toJson());
//   }
//
//   Future<void> createGeneralMedicalTestPackWithFlashcards() async {
//     final packRef = generatePackReference();
//
//     final List<FlashcardDto> flashcards = [
//       FlashcardDto(
//         question: 'What does the prefix "brady-" mean?',
//         answer: 'Slow',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the primary function of red blood cells?',
//         answer: 'Oxygen transport',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "edema" refer to?',
//         answer: 'Swelling caused by fluid accumulation',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which organ is primarily responsible for detoxifying chemicals and metabolizing drugs?',
//         answer: 'Liver',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for low blood sugar?',
//         answer: 'Hypoglycemia',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the medical term for high blood pressure?',
//         answer: 'Hypertension',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "cyanosis" indicate?',
//         answer: 'Lack of oxygen in the blood',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does the suffix "-itis" indicate?',
//         answer: 'Inflammation',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What organ produces insulin?',
//         answer: 'Pancreas',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "tachycardia" mean?',
//         answer: 'Abnormally fast heart rate',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does the term "anemia" mean?',
//         answer: 'A deficiency of red blood cells or hemoglobin',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the name of the valve between the left atrium and left ventricle?',
//         answer: 'Mitral valve',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "dyspnea" refer to?',
//         answer: 'Difficulty breathing',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the body’s largest organ?',
//         answer: 'Skin',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does the abbreviation "BP" stand for?',
//         answer: 'Blood Pressure',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for white blood cells?',
//         answer: 'Leukocytes',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does an EKG or ECG measure?',
//         answer: 'Electrical activity of the heart',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which vitamin is essential for calcium absorption?',
//         answer: 'Vitamin D',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for surgical removal of the appendix?',
//         answer: 'Appendectomy',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "benign" mean in a medical context?',
//         answer: 'Non-cancerous',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the normal range for human body temperature in Celsius?',
//         answer: '36.5–37.5°C',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the main function of platelets?',
//         answer: 'Blood clotting',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "Rx" commonly refer to?',
//         answer: 'Prescription',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does BMI stand for?',
//         answer: 'Body Mass Index',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What organ is affected in hepatitis?',
//         answer: 'Liver',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What hormone regulates blood sugar levels?',
//         answer: 'Insulin',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for increased thirst?',
//         answer: 'Polydipsia',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the function of the kidneys?',
//         answer: 'Filter blood and produce urine',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the first part of the small intestine?',
//         answer: 'Duodenum',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does the abbreviation "IV" stand for?',
//         answer: 'Intravenous',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is a common symptom of anemia?',
//         answer: 'Fatigue',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does the prefix "hemo-" or "hema-" refer to?',
//         answer: 'Blood',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What structure connects muscles to bones?',
//         answer: 'Tendons',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which part of the brain controls balance and coordination?',
//         answer: 'Cerebellum',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for chest pain due to reduced blood flow to the heart?',
//         answer: 'Angina',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which cell type is responsible for producing antibodies?',
//         answer: 'B cells (plasma cells)',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What organ is affected in nephritis?',
//         answer: 'Kidney',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for abnormally low levels of sodium in the blood?',
//         answer: 'Hyponatremia',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "palliative care" focus on?',
//         answer: 'Relieving symptoms and improving quality of life',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "prognosis" refer to?',
//         answer: 'The likely course or outcome of a disease',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the fluid that cushions the brain and spinal cord called?',
//         answer: 'Cerebrospinal fluid (CSF)',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the medical term for a heart attack?',
//         answer: 'Myocardial infarction',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "antipyretic" mean?',
//         answer: 'Fever-reducing',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What part of the body is affected by osteoarthritis?',
//         answer: 'Joints',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which gland regulates metabolism?',
//         answer: 'Thyroid gland',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the term for difficulty swallowing?',
//         answer: 'Dysphagia',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What does "contraindication" mean?',
//         answer: 'A reason to not use a treatment',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the common name for epistaxis?',
//         answer: 'Nosebleed',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'Which blood type is known as the universal donor?',
//         answer: 'O negative',
//         packId: packRef.id,
//       ),
//       FlashcardDto(
//         question: 'What is the name of the body’s response system to injury or infection?',
//         answer: 'Inflammatory response',
//         packId: packRef.id,
//       ),
//     ];
//
//     final List<String> flashcardIds = [];
//     for (var fc in flashcards) {
//       final docRef = _flashcards.doc();
//       await docRef.set(fc.toJson());
//       flashcardIds.add(docRef.id);
//     }
//
//     final pack = PackDto(
//       id: null,
//       name: "Medical Fundamentals",
//       flashcardIds: flashcardIds,
//     );
//     await packRef.set(pack.toJson());
//   }
// }
