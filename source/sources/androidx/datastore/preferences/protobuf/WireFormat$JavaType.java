package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WireFormat$JavaType {
    public static final WireFormat$JavaType j;
    public static final WireFormat$JavaType k;
    public static final WireFormat$JavaType l;
    public static final WireFormat$JavaType m;
    public static final WireFormat$JavaType n;
    public static final WireFormat$JavaType o;
    public static final WireFormat$JavaType p;
    public static final WireFormat$JavaType q;
    public static final WireFormat$JavaType r;
    public static final /* synthetic */ WireFormat$JavaType[] s;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.datastore.preferences.protobuf.WireFormat$JavaType, java.lang.Enum] */
    static {
        ?? r0 = new Enum("INT", 0);
        j = r0;
        ?? r1 = new Enum("LONG", 1);
        k = r1;
        ?? r2 = new Enum("FLOAT", 2);
        l = r2;
        ?? r3 = new Enum("DOUBLE", 3);
        m = r3;
        ?? r4 = new Enum("BOOLEAN", 4);
        n = r4;
        ?? r5 = new Enum("STRING", 5);
        o = r5;
        ByteString byteString = ByteString.k;
        ?? r6 = new Enum("BYTE_STRING", 6);
        p = r6;
        ?? r7 = new Enum("ENUM", 7);
        q = r7;
        ?? r8 = new Enum("MESSAGE", 8);
        r = r8;
        s = new WireFormat$JavaType[]{r0, r1, r2, r3, r4, r5, r6, r7, r8};
    }

    public static WireFormat$JavaType valueOf(String str) {
        return (WireFormat$JavaType) Enum.valueOf(WireFormat$JavaType.class, str);
    }

    public static WireFormat$JavaType[] values() {
        return (WireFormat$JavaType[]) s.clone();
    }
}
