package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MessageSetSchema<T> implements Schema<T> {
    public final MessageLite a;
    public final UnknownFieldSchema b;
    public final ExtensionSchema c;

    public MessageSetSchema(UnknownFieldSchema unknownFieldSchema, ExtensionSchema extensionSchema, MessageLite messageLite) {
        this.b = unknownFieldSchema;
        extensionSchema.getClass();
        this.c = extensionSchema;
        this.a = messageLite;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void a(Object obj, Object obj2) {
        SchemaUtil.k(this.b, obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void b(Object obj) {
        ((UnknownFieldSetLiteSchema) this.b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) obj).unknownFields;
        if (unknownFieldSetLite.e) {
            unknownFieldSetLite.e = false;
        }
        ((ExtensionSchemaLite) this.c).getClass();
        q.w(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean c(Object obj) {
        ((ExtensionSchemaLite) this.c).getClass();
        q.w(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int d(GeneratedMessageLite generatedMessageLite) {
        ((UnknownFieldSetLiteSchema) this.b).getClass();
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        int i = unknownFieldSetLite.d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < unknownFieldSetLite.a; i3++) {
            int i4 = unknownFieldSetLite.b[i3] >>> 3;
            i2 += CodedOutputStream.b(3, (ByteString) unknownFieldSetLite.c[i3]) + CodedOutputStream.e(i4) + CodedOutputStream.d(2) + (CodedOutputStream.d(1) * 2);
        }
        unknownFieldSetLite.d = i2;
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final int e(GeneratedMessageLite generatedMessageLite) {
        ((UnknownFieldSetLiteSchema) this.b).getClass();
        return generatedMessageLite.unknownFields.hashCode();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void f(Object obj, Writer writer) {
        ((ExtensionSchemaLite) this.c).getClass();
        q.w(obj);
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final boolean g(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2) {
        UnknownFieldSetLiteSchema unknownFieldSetLiteSchema = (UnknownFieldSetLiteSchema) this.b;
        unknownFieldSetLiteSchema.getClass();
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        unknownFieldSetLiteSchema.getClass();
        if (!unknownFieldSetLite.equals(generatedMessageLite2.unknownFields)) {
            return false;
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final void h(Object obj, CodedInputStreamReader codedInputStreamReader, ExtensionRegistryLite extensionRegistryLite) {
        this.b.a(obj);
        ((ExtensionSchemaLite) this.c).getClass();
        obj.getClass();
        throw new ClassCastException();
    }

    @Override // androidx.datastore.preferences.protobuf.Schema
    public final GeneratedMessageLite i() {
        MessageLite messageLite = this.a;
        if (messageLite instanceof GeneratedMessageLite) {
            return ((GeneratedMessageLite) messageLite).m();
        }
        return ((GeneratedMessageLite.Builder) ((GeneratedMessageLite) messageLite).d(GeneratedMessageLite.MethodToInvoke.n)).b();
    }
}
