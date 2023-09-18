import lxml.etree as ET

xml_filename = 'employee_data.xml'
xsd_filename = 'employee_schema.xsd'
xsl_filename = 'employee_transform.xsl'

xml_tree = ET.parse(xml_filename)
xsd_schema = ET.XMLSchema(file=xsd_filename)

if xsd_schema.validate(xml_tree):
    print("XML validation successful.")
else:
    print("XML validation failed. Aborting.")
    exit(1)

xslt = ET.XSLT(ET.parse(xsl_filename))
transformed_data = xslt(xml_tree)

output_filename = 'employee_data.html'
with open(output_filename, 'w') as f:
    f.write(str(transformed_data))

print(f"XML data successfully transformed to HTML. Saved to {output_filename}.")
 