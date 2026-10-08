package com.google.firebase.encoders.proto;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public @interface Protobuf {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class IntEncoding {
        public static final IntEncoding j;
        public static final /* synthetic */ IntEncoding[] k;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.firebase.encoders.proto.Protobuf$IntEncoding] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.firebase.encoders.proto.Protobuf$IntEncoding] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.firebase.encoders.proto.Protobuf$IntEncoding] */
        static {
            ?? r0 = new Enum("DEFAULT", 0);
            j = r0;
            k = new IntEncoding[]{r0, new Enum("SIGNED", 1), new Enum("FIXED", 2)};
        }

        public static IntEncoding valueOf(String str) {
            return (IntEncoding) Enum.valueOf(IntEncoding.class, str);
        }

        public static IntEncoding[] values() {
            return (IntEncoding[]) k.clone();
        }
    }

    IntEncoding intEncoding() default IntEncoding.j;

    int tag();
}
