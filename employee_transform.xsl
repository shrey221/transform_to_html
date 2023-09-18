<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
          }
        </style>
      </head>
      <body>
        <table>
          <thead>
            <tr>
              <th>Employee ID</th>
              <th>Name</th>
              <th>Position</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="employees/employee">
              <tr>
                <td><xsl:value-of select="employee_id"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="position"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
