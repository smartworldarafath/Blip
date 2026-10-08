package androidx.datastore.preferences.protobuf;

import defpackage.u2;
import io.sentry.d;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class Protobuf {
    public static final Protobuf c = new Protobuf();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final ManifestSchemaFactory a = new ManifestSchemaFactory();

    public final Schema a(Class cls) {
        boolean z;
        ExtensionSchema extensionSchema;
        Schema w;
        ExtensionSchemaLite extensionSchemaLite;
        Class cls2;
        Internal.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.b;
        Schema schema = (Schema) concurrentHashMap.get(cls);
        if (schema == null) {
            ManifestSchemaFactory manifestSchemaFactory = this.a;
            manifestSchemaFactory.getClass();
            Class cls3 = SchemaUtil.a;
            if (!GeneratedMessageLite.class.isAssignableFrom(cls) && (cls2 = SchemaUtil.a) != null && !cls2.isAssignableFrom(cls)) {
                u2.g("Message classes must extend GeneratedMessage or GeneratedMessageLite");
                return null;
            }
            MessageInfo a = manifestSchemaFactory.a.a(cls);
            if ((((RawMessageInfo) a).d & 2) == 2) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                    w = new MessageSetSchema(SchemaUtil.c, ExtensionSchemas.a, ((RawMessageInfo) a).a);
                } else {
                    UnknownFieldSchema unknownFieldSchema = SchemaUtil.b;
                    ExtensionSchema extensionSchema2 = ExtensionSchemas.b;
                    if (extensionSchema2 != null) {
                        w = new MessageSetSchema(unknownFieldSchema, extensionSchema2, ((RawMessageInfo) a).a);
                    } else {
                        u2.l("Protobuf runtime is not correctly loaded.");
                        return null;
                    }
                }
            } else if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                NewInstanceSchemaLite newInstanceSchemaLite = NewInstanceSchemas.b;
                ListFieldSchemaLite listFieldSchemaLite = ListFieldSchemas.b;
                UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = SchemaUtil.c;
                if (((RawMessageInfo) a).a().ordinal() != 1) {
                    extensionSchemaLite = ExtensionSchemas.a;
                } else {
                    extensionSchemaLite = null;
                }
                MapFieldSchemaLite mapFieldSchemaLite = MapFieldSchemas.b;
                if (a instanceof RawMessageInfo) {
                    w = MessageSchema.w((RawMessageInfo) a, newInstanceSchemaLite, listFieldSchemaLite, unknownFieldSetLiteSchema, extensionSchemaLite, mapFieldSchemaLite);
                } else {
                    int[] iArr = MessageSchema.n;
                    d.i();
                    return null;
                }
            } else {
                NewInstanceSchema newInstanceSchema = NewInstanceSchemas.a;
                ListFieldSchema listFieldSchema = ListFieldSchemas.a;
                UnknownFieldSchema unknownFieldSchema2 = SchemaUtil.b;
                if (((RawMessageInfo) a).a().ordinal() != 1) {
                    ExtensionSchema extensionSchema3 = ExtensionSchemas.b;
                    if (extensionSchema3 != null) {
                        extensionSchema = extensionSchema3;
                    } else {
                        u2.l("Protobuf runtime is not correctly loaded.");
                        return null;
                    }
                } else {
                    extensionSchema = null;
                }
                MapFieldSchema mapFieldSchema = MapFieldSchemas.a;
                if (a instanceof RawMessageInfo) {
                    w = MessageSchema.w((RawMessageInfo) a, newInstanceSchema, listFieldSchema, unknownFieldSchema2, extensionSchema, mapFieldSchema);
                } else {
                    int[] iArr2 = MessageSchema.n;
                    d.i();
                    return null;
                }
            }
            Schema schema2 = (Schema) concurrentHashMap.putIfAbsent(cls, w);
            if (schema2 != null) {
                return schema2;
            }
            return w;
        }
        return schema;
    }
}
