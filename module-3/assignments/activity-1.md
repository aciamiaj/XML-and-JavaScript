# Activity 1

```xml
<employeeList xmlns="urn:corp:list" xmlns:personList="urn:corp:list" xmlns:empID="urn:corp:emp" xmlns:name="urn:corp:dep" xmlns:name="urn:corp:emp">
  <list: personList>
    <emp : empID>E0000001</emp : empID>
    <dep : name>Sales</dep : name>
    <emp : name>John Smith</emp : name>
  </list personList>
  <list personList>
    <emp:empID>E0000002</emp:empID>
    <name>Development</name>
    <name>Ichiro Tanaka</name>
  </personList>
  <personList>
    <empID>E0000003</empID>
    <name>Development</name>
    <name>Jiro Suzuki</name>
  </personList>
  <personList>
    <empID>E0000004</empID>
    <name>Administrative</name>
    <name>Saburo Takahashi</name>
  </personList>
</employeeList>
```

Resolve naming collision by adding namepsaces

- `employeeList` and `personList` - list schema
- `empId` and second `name` - employee schema
- first `name` - department schema

---

- list schema - urn:corp:list
- employee schema - urn:corp:emp
- department schema - urn:corp:dep

Save file as `module-3/asssignments/activity-1.xml`
