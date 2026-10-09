package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.Parser;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferencesProto$StringSet extends GeneratedMessageLite<PreferencesProto$StringSet, Builder> {
    private static final PreferencesProto$StringSet DEFAULT_INSTANCE;
    private static volatile Parser<PreferencesProto$StringSet> PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private Internal.ProtobufList<String> strings_ = GeneratedMessageLite.e();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<PreferencesProto$StringSet, Builder> {
    }

    static {
        PreferencesProto$StringSet preferencesProto$StringSet = new PreferencesProto$StringSet();
        DEFAULT_INSTANCE = preferencesProto$StringSet;
        GeneratedMessageLite.o(PreferencesProto$StringSet.class, preferencesProto$StringSet);
    }

    public static void r(PreferencesProto$StringSet preferencesProto$StringSet, Iterable iterable) {
        Internal.ProtobufList<String> protobufList = preferencesProto$StringSet.strings_;
        if (!protobufList.w()) {
            preferencesProto$StringSet.strings_ = GeneratedMessageLite.k(protobufList);
        }
        AbstractMessageLite.a(iterable, preferencesProto$StringSet.strings_);
    }

    public static PreferencesProto$StringSet s() {
        return DEFAULT_INSTANCE;
    }

    public static Builder u() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.d(GeneratedMessageLite.MethodToInvoke.n));
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object, androidx.datastore.preferences.protobuf.Parser<androidx.datastore.preferences.PreferencesProto$StringSet>] */
    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object d(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser<PreferencesProto$StringSet> parser;
        switch (methodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return GeneratedMessageLite.l(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return new PreferencesProto$StringSet();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return new GeneratedMessageLite.Builder(DEFAULT_INSTANCE);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return DEFAULT_INSTANCE;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Parser<PreferencesProto$StringSet> parser2 = PARSER;
                if (parser2 == null) {
                    synchronized (PreferencesProto$StringSet.class) {
                        try {
                            Parser<PreferencesProto$StringSet> parser3 = PARSER;
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

    public final Internal.ProtobufList t() {
        return this.strings_;
    }
}
