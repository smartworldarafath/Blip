package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JavaType {
    public static final JavaType j;
    public static final JavaType k;
    public static final JavaType l;
    public static final JavaType m;
    public static final JavaType n;
    public static final JavaType o;
    public static final JavaType p;
    public static final JavaType q;
    public static final JavaType r;
    public static final JavaType s;
    public static final /* synthetic */ JavaType[] t;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.JavaType] */
    static {
        ?? r0 = new Enum("VOID", 0);
        j = r0;
        ?? r1 = new Enum("INT", 1);
        k = r1;
        ?? r2 = new Enum("LONG", 2);
        l = r2;
        ?? r3 = new Enum("FLOAT", 3);
        m = r3;
        ?? r4 = new Enum("DOUBLE", 4);
        n = r4;
        ?? r5 = new Enum("BOOLEAN", 5);
        o = r5;
        ?? r6 = new Enum("STRING", 6);
        p = r6;
        ByteString byteString = ByteString.k;
        ?? r7 = new Enum("BYTE_STRING", 7);
        q = r7;
        ?? r8 = new Enum("ENUM", 8);
        r = r8;
        ?? r9 = new Enum("MESSAGE", 9);
        s = r9;
        t = new JavaType[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9};
    }

    public static JavaType valueOf(String str) {
        return (JavaType) Enum.valueOf(JavaType.class, str);
    }

    public static JavaType[] values() {
        return (JavaType[]) t.clone();
    }
}
