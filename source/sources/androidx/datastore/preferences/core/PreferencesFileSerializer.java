package androidx.datastore.preferences.core;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.core.UncloseableOutputStream;
import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.PreferencesProto$StringSet;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import defpackage.k8;
import defpackage.u2;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferencesFileSerializer {
    public static final PreferencesFileSerializer a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[PreferencesProto$Value.ValueCase.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[6] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[4] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[5] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[7] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[8] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            a = iArr;
        }
    }

    public final MutablePreferences a(FileInputStream fileInputStream) {
        int i;
        byte[] bArr;
        try {
            PreferencesProto$PreferenceMap u = PreferencesProto$PreferenceMap.u(fileInputStream);
            MutablePreferences mutablePreferences = new MutablePreferences(false);
            Preferences.Pair[] pairArr = (Preferences.Pair[]) Arrays.copyOf(new Preferences.Pair[0], 0);
            mutablePreferences.b();
            if (pairArr.length <= 0) {
                Map s = u.s();
                s.getClass();
                for (Map.Entry entry : s.entrySet()) {
                    String str = (String) entry.getKey();
                    PreferencesProto$Value preferencesProto$Value = (PreferencesProto$Value) entry.getValue();
                    str.getClass();
                    preferencesProto$Value.getClass();
                    PreferencesProto$Value.ValueCase I = preferencesProto$Value.I();
                    if (I == null) {
                        i = -1;
                    } else {
                        i = WhenMappings.a[I.ordinal()];
                    }
                    switch (i) {
                        case -1:
                            throw new IOException("Value case is null.", null);
                        case 0:
                        default:
                            k8.e();
                            return null;
                        case 1:
                            mutablePreferences.d(new Preferences.Key(str), Boolean.valueOf(preferencesProto$Value.z()));
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            mutablePreferences.d(new Preferences.Key(str), Float.valueOf(preferencesProto$Value.D()));
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            mutablePreferences.d(new Preferences.Key(str), Double.valueOf(preferencesProto$Value.C()));
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            mutablePreferences.d(new Preferences.Key(str), Integer.valueOf(preferencesProto$Value.E()));
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            mutablePreferences.d(new Preferences.Key(str), Long.valueOf(preferencesProto$Value.F()));
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            Preferences.Key key = new Preferences.Key(str);
                            String G = preferencesProto$Value.G();
                            G.getClass();
                            mutablePreferences.d(key, G);
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            Preferences.Key key2 = new Preferences.Key(str);
                            Internal.ProtobufList t = preferencesProto$Value.H().t();
                            t.getClass();
                            mutablePreferences.d(key2, CollectionsKt.a0(t));
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            Preferences.Key key3 = new Preferences.Key(str);
                            ByteString A = preferencesProto$Value.A();
                            int size = A.size();
                            if (size == 0) {
                                bArr = Internal.b;
                            } else {
                                byte[] bArr2 = new byte[size];
                                A.e(size, bArr2);
                                bArr = bArr2;
                            }
                            bArr.getClass();
                            mutablePreferences.d(key3, bArr);
                            break;
                        case KeyModifiers.a /* 9 */:
                            throw new IOException("Value not set.", null);
                    }
                }
                return new MutablePreferences(new LinkedHashMap(mutablePreferences.a()), true);
            }
            Preferences.Pair pair = pairArr[0];
            throw null;
        } catch (InvalidProtocolBufferException e) {
            throw new IOException("Unable to parse preferences proto.", e);
        }
    }

    public final void b(Object obj, UncloseableOutputStream uncloseableOutputStream) {
        GeneratedMessageLite a2;
        Map a3 = ((Preferences) obj).a();
        PreferencesProto$PreferenceMap.Builder t = PreferencesProto$PreferenceMap.t();
        for (Map.Entry entry : a3.entrySet()) {
            Preferences.Key key = (Preferences.Key) entry.getKey();
            Object value = entry.getValue();
            String str = key.a;
            if (value instanceof Boolean) {
                PreferencesProto$Value.Builder J = PreferencesProto$Value.J();
                boolean booleanValue = ((Boolean) value).booleanValue();
                J.c();
                PreferencesProto$Value.w((PreferencesProto$Value) J.k, booleanValue);
                a2 = J.a();
            } else if (value instanceof Float) {
                PreferencesProto$Value.Builder J2 = PreferencesProto$Value.J();
                float floatValue = ((Number) value).floatValue();
                J2.c();
                PreferencesProto$Value.x((PreferencesProto$Value) J2.k, floatValue);
                a2 = J2.a();
            } else if (value instanceof Double) {
                PreferencesProto$Value.Builder J3 = PreferencesProto$Value.J();
                double doubleValue = ((Number) value).doubleValue();
                J3.c();
                PreferencesProto$Value.u((PreferencesProto$Value) J3.k, doubleValue);
                a2 = J3.a();
            } else if (value instanceof Integer) {
                PreferencesProto$Value.Builder J4 = PreferencesProto$Value.J();
                int intValue = ((Number) value).intValue();
                J4.c();
                PreferencesProto$Value.y((PreferencesProto$Value) J4.k, intValue);
                a2 = J4.a();
            } else if (value instanceof Long) {
                PreferencesProto$Value.Builder J5 = PreferencesProto$Value.J();
                long longValue = ((Number) value).longValue();
                J5.c();
                PreferencesProto$Value.r((PreferencesProto$Value) J5.k, longValue);
                a2 = J5.a();
            } else if (value instanceof String) {
                PreferencesProto$Value.Builder J6 = PreferencesProto$Value.J();
                J6.c();
                PreferencesProto$Value.s((PreferencesProto$Value) J6.k, (String) value);
                a2 = J6.a();
            } else if (value instanceof Set) {
                PreferencesProto$Value.Builder J7 = PreferencesProto$Value.J();
                PreferencesProto$StringSet.Builder u = PreferencesProto$StringSet.u();
                u.c();
                PreferencesProto$StringSet.r((PreferencesProto$StringSet) u.k, (Set) value);
                J7.c();
                PreferencesProto$Value.t((PreferencesProto$Value) J7.k, (PreferencesProto$StringSet) u.a());
                a2 = J7.a();
            } else if (value instanceof byte[]) {
                PreferencesProto$Value.Builder J8 = PreferencesProto$Value.J();
                byte[] bArr = (byte[]) value;
                ByteString d = ByteString.d(bArr, 0, bArr.length);
                J8.c();
                PreferencesProto$Value.v((PreferencesProto$Value) J8.k, d);
                a2 = J8.a();
            } else {
                u2.l("PreferencesSerializer does not support type: ".concat(value.getClass().getName()));
                return;
            }
            t.getClass();
            str.getClass();
            t.c();
            PreferencesProto$PreferenceMap.r((PreferencesProto$PreferenceMap) t.k).put(str, (PreferencesProto$Value) a2);
        }
        ((PreferencesProto$PreferenceMap) t.a()).c(uncloseableOutputStream);
    }
}
