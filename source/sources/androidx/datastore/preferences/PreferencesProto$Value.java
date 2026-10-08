package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Parser;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferencesProto$Value extends GeneratedMessageLite<PreferencesProto$Value, Builder> {
    public static final int BOOLEAN_FIELD_NUMBER = 1;
    public static final int BYTES_FIELD_NUMBER = 8;
    private static final PreferencesProto$Value DEFAULT_INSTANCE;
    public static final int DOUBLE_FIELD_NUMBER = 7;
    public static final int FLOAT_FIELD_NUMBER = 2;
    public static final int INTEGER_FIELD_NUMBER = 3;
    public static final int LONG_FIELD_NUMBER = 4;
    private static volatile Parser<PreferencesProto$Value> PARSER = null;
    public static final int STRING_FIELD_NUMBER = 5;
    public static final int STRING_SET_FIELD_NUMBER = 6;
    private int valueCase_ = 0;
    private Object value_;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<PreferencesProto$Value, Builder> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ValueCase {
        public static final ValueCase j;
        public static final ValueCase k;
        public static final ValueCase l;
        public static final ValueCase m;
        public static final ValueCase n;
        public static final ValueCase o;
        public static final ValueCase p;
        public static final ValueCase q;
        public static final ValueCase r;
        public static final /* synthetic */ ValueCase[] s;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, androidx.datastore.preferences.PreferencesProto$Value$ValueCase] */
        static {
            ?? r0 = new Enum("BOOLEAN", 0);
            j = r0;
            ?? r1 = new Enum("FLOAT", 1);
            k = r1;
            ?? r2 = new Enum("INTEGER", 2);
            l = r2;
            ?? r3 = new Enum("LONG", 3);
            m = r3;
            ?? r4 = new Enum("STRING", 4);
            n = r4;
            ?? r5 = new Enum("STRING_SET", 5);
            o = r5;
            ?? r6 = new Enum("DOUBLE", 6);
            p = r6;
            ?? r7 = new Enum("BYTES", 7);
            q = r7;
            ?? r8 = new Enum("VALUE_NOT_SET", 8);
            r = r8;
            s = new ValueCase[]{r0, r1, r2, r3, r4, r5, r6, r7, r8};
        }

        public static ValueCase valueOf(String str) {
            return (ValueCase) Enum.valueOf(ValueCase.class, str);
        }

        public static ValueCase[] values() {
            return (ValueCase[]) s.clone();
        }
    }

    static {
        PreferencesProto$Value preferencesProto$Value = new PreferencesProto$Value();
        DEFAULT_INSTANCE = preferencesProto$Value;
        GeneratedMessageLite.o(PreferencesProto$Value.class, preferencesProto$Value);
    }

    public static PreferencesProto$Value B() {
        return DEFAULT_INSTANCE;
    }

    public static Builder J() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.d(GeneratedMessageLite.MethodToInvoke.n));
    }

    public static void r(PreferencesProto$Value preferencesProto$Value, long j) {
        preferencesProto$Value.valueCase_ = 4;
        preferencesProto$Value.value_ = Long.valueOf(j);
    }

    public static void s(PreferencesProto$Value preferencesProto$Value, String str) {
        preferencesProto$Value.getClass();
        preferencesProto$Value.valueCase_ = 5;
        preferencesProto$Value.value_ = str;
    }

    public static void t(PreferencesProto$Value preferencesProto$Value, PreferencesProto$StringSet preferencesProto$StringSet) {
        preferencesProto$Value.getClass();
        preferencesProto$Value.value_ = preferencesProto$StringSet;
        preferencesProto$Value.valueCase_ = 6;
    }

    public static void u(PreferencesProto$Value preferencesProto$Value, double d) {
        preferencesProto$Value.valueCase_ = 7;
        preferencesProto$Value.value_ = Double.valueOf(d);
    }

    public static void v(PreferencesProto$Value preferencesProto$Value, ByteString byteString) {
        preferencesProto$Value.getClass();
        preferencesProto$Value.valueCase_ = 8;
        preferencesProto$Value.value_ = byteString;
    }

    public static void w(PreferencesProto$Value preferencesProto$Value, boolean z) {
        preferencesProto$Value.valueCase_ = 1;
        preferencesProto$Value.value_ = Boolean.valueOf(z);
    }

    public static void x(PreferencesProto$Value preferencesProto$Value, float f) {
        preferencesProto$Value.valueCase_ = 2;
        preferencesProto$Value.value_ = Float.valueOf(f);
    }

    public static void y(PreferencesProto$Value preferencesProto$Value, int i) {
        preferencesProto$Value.valueCase_ = 3;
        preferencesProto$Value.value_ = Integer.valueOf(i);
    }

    public final ByteString A() {
        if (this.valueCase_ == 8) {
            return (ByteString) this.value_;
        }
        return ByteString.k;
    }

    public final double C() {
        if (this.valueCase_ == 7) {
            return ((Double) this.value_).doubleValue();
        }
        return 0.0d;
    }

    public final float D() {
        if (this.valueCase_ == 2) {
            return ((Float) this.value_).floatValue();
        }
        return 0.0f;
    }

    public final int E() {
        if (this.valueCase_ == 3) {
            return ((Integer) this.value_).intValue();
        }
        return 0;
    }

    public final long F() {
        if (this.valueCase_ == 4) {
            return ((Long) this.value_).longValue();
        }
        return 0L;
    }

    public final String G() {
        if (this.valueCase_ == 5) {
            return (String) this.value_;
        }
        return "";
    }

    public final PreferencesProto$StringSet H() {
        if (this.valueCase_ == 6) {
            return (PreferencesProto$StringSet) this.value_;
        }
        return PreferencesProto$StringSet.s();
    }

    public final ValueCase I() {
        switch (this.valueCase_) {
            case 0:
                return ValueCase.r;
            case 1:
                return ValueCase.j;
            case FLOAT_FIELD_NUMBER /* 2 */:
                return ValueCase.k;
            case INTEGER_FIELD_NUMBER /* 3 */:
                return ValueCase.l;
            case LONG_FIELD_NUMBER /* 4 */:
                return ValueCase.m;
            case STRING_FIELD_NUMBER /* 5 */:
                return ValueCase.n;
            case STRING_SET_FIELD_NUMBER /* 6 */:
                return ValueCase.o;
            case DOUBLE_FIELD_NUMBER /* 7 */:
                return ValueCase.p;
            case BYTES_FIELD_NUMBER /* 8 */:
                return ValueCase.q;
            default:
                return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object, androidx.datastore.preferences.protobuf.Parser<androidx.datastore.preferences.PreferencesProto$Value>] */
    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object d(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser<PreferencesProto$Value> parser;
        switch (methodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case FLOAT_FIELD_NUMBER /* 2 */:
                return GeneratedMessageLite.l(DEFAULT_INSTANCE, "\u0001\b\u0001\u0000\u0001\b\b\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000\b=\u0000", new Object[]{"value_", "valueCase_", PreferencesProto$StringSet.class});
            case INTEGER_FIELD_NUMBER /* 3 */:
                return new PreferencesProto$Value();
            case LONG_FIELD_NUMBER /* 4 */:
                return new GeneratedMessageLite.Builder(DEFAULT_INSTANCE);
            case STRING_FIELD_NUMBER /* 5 */:
                return DEFAULT_INSTANCE;
            case STRING_SET_FIELD_NUMBER /* 6 */:
                Parser<PreferencesProto$Value> parser2 = PARSER;
                if (parser2 == null) {
                    synchronized (PreferencesProto$Value.class) {
                        try {
                            Parser<PreferencesProto$Value> parser3 = PARSER;
                            parser = parser3;
                            if (parser3 == null) {
                                ?? obj = new Object();
                                PARSER = obj;
                                parser = obj;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return parser;
                }
                return parser2;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final boolean z() {
        if (this.valueCase_ == 1) {
            return ((Boolean) this.value_).booleanValue();
        }
        return false;
    }
}
