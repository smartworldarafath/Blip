package androidx.datastore.preferences.protobuf;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Schema<T> {
    void a(Object obj, Object obj2);

    void b(Object obj);

    boolean c(Object obj);

    int d(GeneratedMessageLite generatedMessageLite);

    int e(GeneratedMessageLite generatedMessageLite);

    void f(Object obj, Writer writer);

    boolean g(GeneratedMessageLite generatedMessageLite, GeneratedMessageLite generatedMessageLite2);

    void h(Object obj, CodedInputStreamReader codedInputStreamReader, ExtensionRegistryLite extensionRegistryLite);

    GeneratedMessageLite i();
}
