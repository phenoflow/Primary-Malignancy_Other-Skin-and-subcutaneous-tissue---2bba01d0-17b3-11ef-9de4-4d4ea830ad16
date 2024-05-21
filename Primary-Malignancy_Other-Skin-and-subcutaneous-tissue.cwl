cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  primary-malignancy_other-skin-and-subcutaneous-tissue-basal---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-neoplasm---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-neoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-basal---primary/output
  lower-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: lower-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-neoplasm---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-adenocarcinoma---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-adenocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lower-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-unspecified---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-adenocarcinoma---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-shoulder---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-shoulder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-unspecified---primary/output
  upper-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: upper-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-shoulder---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-history---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: upper-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-scrotum---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-scrotum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-history---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-canthu---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-canthu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-scrotum---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-lesion---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-canthu---primary/output
  squamous-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: squamous-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-lesion---primary/output
  external-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: external-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: squamous-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-breast---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-breast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: external-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  canal-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: canal-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-breast---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-scalp---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-scalp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: canal-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  eyelid-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: eyelid-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-scalp---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: eyelid-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-ulcer---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  biopsy-primary-malignancy_other-skin-and-subcutaneous-tissue---primary:
    run: biopsy-primary-malignancy_other-skin-and-subcutaneous-tissue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-ulcer---primary/output
  other---primary:
    run: other---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: biopsy-primary-malignancy_other-skin-and-subcutaneous-tissue---primary/output
  primary-malignancy_other-skin-and-subcutaneous-tissue-procedure---primary:
    run: primary-malignancy_other-skin-and-subcutaneous-tissue-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: other---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: primary-malignancy_other-skin-and-subcutaneous-tissue-procedure---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
