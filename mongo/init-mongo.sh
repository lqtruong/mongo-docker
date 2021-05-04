mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    var rootUser = '$MONGO_INITDB_ROOT_USERNAME';
    var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD';
    var admin = db.getSiblingDB('$MONGO_INITDB_DATABASE');
    admin.auth(rootUser, rootPassword);

    var user = 'test';
    var passwd = 'test';
    db.createUser({user: user, pwd: passwd, roles: ["readWrite"]});
EOF