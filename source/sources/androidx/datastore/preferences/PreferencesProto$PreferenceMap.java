package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.MapFieldLite;
import androidx.datastore.preferences.protobuf.Parser;
import androidx.datastore.preferences.protobuf.WireFormat$FieldType;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferencesProto$PreferenceMap extends GeneratedMessageLite<PreferencesProto$PreferenceMap, Builder> {
    private static final PreferencesProto$PreferenceMap DEFAULT_INSTANCE;
    private static volatile Parser<PreferencesProto$PreferenceMap> PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private MapFieldLite<String, PreferencesProto$Value> preferences_ = MapFieldLite.k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends GeneratedMessageLite.Builder<PreferencesProto$PreferenceMap, Builder> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PreferencesDefaultEntryHolder {
        public static final MapEntryLite a = new MapEntryLite(WireFormat$FieldType.l, WireFormat$FieldType.n, PreferencesProto$Value.B());
    }

    static {
        PreferencesProto$PreferenceMap preferencesProto$PreferenceMap = new PreferencesProto$PreferenceMap();
        DEFAULT_INSTANCE = preferencesProto$PreferenceMap;
        GeneratedMessageLite.o(PreferencesProto$PreferenceMap.class, preferencesProto$PreferenceMap);
    }

    public static MapFieldLite r(PreferencesProto$PreferenceMap preferencesProto$PreferenceMap) {
        MapFieldLite<String, PreferencesProto$Value> mapFieldLite = preferencesProto$PreferenceMap.preferences_;
        if (!mapFieldLite.j) {
            preferencesProto$PreferenceMap.preferences_ = mapFieldLite.b();
        }
        return preferencesProto$PreferenceMap.preferences_;
    }

    public static Builder t() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.d(GeneratedMessageLite.MethodToInvoke.n));
    }

    public static PreferencesProto$PreferenceMap u(FileInputStream fileInputStream) {
        return (PreferencesProto$PreferenceMap) GeneratedMessageLite.n(DEFAULT_INSTANCE, fileInputStream);
    }

    /* JADX WARN: Type inference failed for: r1v15, types: [androidx.datastore.preferences.protobuf.Parser<androidx.datastore.preferences.PreferencesProto$PreferenceMap>, java.lang.Object] */
    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object d(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser<PreferencesProto$PreferenceMap> parser;
        switch (methodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return GeneratedMessageLite.l(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", PreferencesDefaultEntryHolder.a});
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return new PreferencesProto$PreferenceMap();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return new GeneratedMessageLite.Builder(DEFAULT_INSTANCE);
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return DEFAULT_INSTANCE;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Parser<PreferencesProto$PreferenceMap> parser2 = PARSER;
                if (parser2 == null) {
                    synchronized (PreferencesProto$PreferenceMap.class) {
                        try {
                            Parser<PreferencesProto$PreferenceMap> parser3 = PARSER;
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

    public final Map s() {
        return Collections.unmodifiableMap(this.preferences_);
    }
}
