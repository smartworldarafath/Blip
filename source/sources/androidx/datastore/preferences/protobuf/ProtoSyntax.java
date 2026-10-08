package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoSyntax {
    public static final ProtoSyntax j;
    public static final ProtoSyntax k;
    public static final ProtoSyntax l;
    public static final /* synthetic */ ProtoSyntax[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.ProtoSyntax] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.ProtoSyntax] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.ProtoSyntax] */
    static {
        ?? r0 = new Enum("PROTO2", 0);
        j = r0;
        ?? r1 = new Enum("PROTO3", 1);
        k = r1;
        ?? r2 = new Enum("EDITIONS", 2);
        l = r2;
        m = new ProtoSyntax[]{r0, r1, r2};
    }

    public static ProtoSyntax valueOf(String str) {
        return (ProtoSyntax) Enum.valueOf(ProtoSyntax.class, str);
    }

    public static ProtoSyntax[] values() {
        return (ProtoSyntax[]) m.clone();
    }
}
