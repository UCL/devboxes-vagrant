<html>
<head>
    <title></title>
</head>
<body>
Dear ${user.fullName},<br><br>
${patientList.size()} of the patients in your center "${centre.name}" in the ESID Registry have not been updated for more than ${days} days.<br>
Best regards,<br>
the UKPID Registry Team<br><br>
These are the IDs of the patient entries in need of an update: <b>${patientList*.id.join(", ")}</b>
</body>
</html>
