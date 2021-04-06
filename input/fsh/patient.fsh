Alias: IdentifierProfile = http://fhir.de/StructureDefinition/identifier-iknr
Alias: TestProfile2 = http://fhir.abda.de/eRezeptAbgabedaten/StructureDefinition/DAV-PR-ERP-ZusatzdatenHerstellung

Profile:        TestProfile
Parent:         MedicationDispense
* performer.actor 1..1
* performer.actor.identifier only IdentifierProfile

Instance: TestInstance
InstanceOf: TestProfile
* performer.actor.identifier.value = "123456789"
* status = #final
* medicationCodeableConcept.coding = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-applicable

Instance: TestInstanceExternalProfile
InstanceOf: TestProfile2
* performer.actor.identifier.value = "123456789"
* whenPrepared = "2021-01-20T13:47:00Z"
