package androidx.datastore.preferences.protobuf;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListFieldSchemas {
    public static final ListFieldSchema a;
    public static final ListFieldSchemaLite b;

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.datastore.preferences.protobuf.ListFieldSchemaLite] */
    static {
        Protobuf protobuf = Protobuf.c;
        ListFieldSchema listFieldSchema = null;
        try {
            listFieldSchema = (ListFieldSchema) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        a = listFieldSchema;
        b = new Object();
    }
}
