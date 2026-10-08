package androidx.datastore.preferences.protobuf;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.SmallSortedMap;
import defpackage.u2;
import io.sentry.d;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FieldSet<T> {
    public final SmallSortedMap.AnonymousClass1 a = SmallSortedMap.f();
    public boolean b;

    static {
        new FieldSet(0);
    }

    public FieldSet(int i) {
        b();
        b();
    }

    public static int a(WireFormat$FieldType wireFormat$FieldType, int i, Object obj) {
        int size;
        int e;
        int d = CodedOutputStream.d(i);
        if (wireFormat$FieldType == WireFormat$FieldType.m) {
            d *= 2;
        }
        int i2 = 1;
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                Logger logger = CodedOutputStream.b;
                i2 = 8;
                break;
            case 1:
                ((Float) obj).getClass();
                Logger logger2 = CodedOutputStream.b;
                i2 = 4;
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                i2 = CodedOutputStream.f(((Long) obj).longValue());
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                i2 = CodedOutputStream.f(((Long) obj).longValue());
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                i2 = CodedOutputStream.f(((Integer) obj).intValue());
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Long) obj).getClass();
                Logger logger3 = CodedOutputStream.b;
                i2 = 8;
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj).getClass();
                Logger logger4 = CodedOutputStream.b;
                i2 = 4;
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Boolean) obj).getClass();
                Logger logger5 = CodedOutputStream.b;
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (obj instanceof ByteString) {
                    Logger logger6 = CodedOutputStream.b;
                    size = ((ByteString) obj).size();
                    e = CodedOutputStream.e(size);
                    i2 = e + size;
                    break;
                } else {
                    i2 = CodedOutputStream.c((String) obj);
                    break;
                }
            case KeyModifiers.a /* 9 */:
                Logger logger7 = CodedOutputStream.b;
                i2 = ((GeneratedMessageLite) ((MessageLite) obj)).b(null);
                break;
            case KeyModifiers.b /* 10 */:
                Logger logger8 = CodedOutputStream.b;
                size = ((GeneratedMessageLite) ((MessageLite) obj)).b(null);
                e = CodedOutputStream.e(size);
                i2 = e + size;
                break;
            case 11:
                if (obj instanceof ByteString) {
                    Logger logger9 = CodedOutputStream.b;
                    size = ((ByteString) obj).size();
                    e = CodedOutputStream.e(size);
                } else {
                    Logger logger10 = CodedOutputStream.b;
                    size = ((byte[]) obj).length;
                    e = CodedOutputStream.e(size);
                }
                i2 = e + size;
                break;
            case KeyModifiers.c /* 12 */:
                i2 = CodedOutputStream.e(((Integer) obj).intValue());
                break;
            case 13:
                i2 = CodedOutputStream.f(((Integer) obj).intValue());
                break;
            case 14:
                ((Integer) obj).getClass();
                Logger logger11 = CodedOutputStream.b;
                i2 = 4;
                break;
            case 15:
                ((Long) obj).getClass();
                Logger logger12 = CodedOutputStream.b;
                i2 = 8;
                break;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i2 = CodedOutputStream.e((intValue >> 31) ^ (intValue << 1));
                break;
            case 17:
                long longValue = ((Long) obj).longValue();
                i2 = CodedOutputStream.f((longValue << 1) ^ (longValue >> 63));
                break;
            default:
                u2.n("There is no way to get here, but the compiler thinks otherwise.");
                i2 = 0;
                break;
        }
        return d + i2;
    }

    public static void c(CodedOutputStream codedOutputStream, WireFormat$FieldType wireFormat$FieldType, int i, Object obj) {
        if (wireFormat$FieldType == WireFormat$FieldType.m) {
            codedOutputStream.v(i, 3);
            ((GeneratedMessageLite) ((MessageLite) obj)).q(codedOutputStream);
            codedOutputStream.v(i, 4);
            return;
        }
        codedOutputStream.v(i, wireFormat$FieldType.k);
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                codedOutputStream.o(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                codedOutputStream.m(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                codedOutputStream.z(((Long) obj).longValue());
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                codedOutputStream.z(((Long) obj).longValue());
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                codedOutputStream.q(((Integer) obj).intValue());
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                codedOutputStream.o(((Long) obj).longValue());
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                codedOutputStream.m(((Integer) obj).intValue());
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                codedOutputStream.g(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (obj instanceof ByteString) {
                    codedOutputStream.k((ByteString) obj);
                    return;
                } else {
                    codedOutputStream.u((String) obj);
                    return;
                }
            case KeyModifiers.a /* 9 */:
                ((GeneratedMessageLite) ((MessageLite) obj)).q(codedOutputStream);
                return;
            case KeyModifiers.b /* 10 */:
                codedOutputStream.s((MessageLite) obj);
                return;
            case 11:
                if (obj instanceof ByteString) {
                    codedOutputStream.k((ByteString) obj);
                    return;
                } else {
                    byte[] bArr = (byte[]) obj;
                    codedOutputStream.i(bArr.length, bArr);
                    return;
                }
            case KeyModifiers.c /* 12 */:
                codedOutputStream.x(((Integer) obj).intValue());
                return;
            case 13:
                codedOutputStream.q(((Integer) obj).intValue());
                return;
            case 14:
                codedOutputStream.m(((Integer) obj).intValue());
                return;
            case 15:
                codedOutputStream.o(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                codedOutputStream.x((intValue >> 31) ^ (intValue << 1));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                codedOutputStream.z((longValue >> 63) ^ (longValue << 1));
                return;
            default:
                return;
        }
    }

    public final void b() {
        Map unmodifiableMap;
        Map unmodifiableMap2;
        if (this.b) {
            return;
        }
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.a;
        int size = anonymousClass1.j.size();
        for (int i = 0; i < size; i++) {
            Map.Entry c = anonymousClass1.c(i);
            if (c.getValue() instanceof GeneratedMessageLite) {
                GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) c.getValue();
                generatedMessageLite.getClass();
                Protobuf protobuf = Protobuf.c;
                protobuf.getClass();
                protobuf.a(generatedMessageLite.getClass()).b(generatedMessageLite);
                generatedMessageLite.j();
            }
        }
        if (!anonymousClass1.l) {
            if (anonymousClass1.j.size() <= 0) {
                Iterator<T> it = anonymousClass1.d().iterator();
                if (it.hasNext()) {
                    ((Map.Entry) it.next()).getKey().getClass();
                    d.i();
                    return;
                }
            } else {
                anonymousClass1.c(0).getKey().getClass();
                d.i();
                return;
            }
        }
        if (!anonymousClass1.l) {
            if (anonymousClass1.k.isEmpty()) {
                unmodifiableMap = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap = Collections.unmodifiableMap(anonymousClass1.k);
            }
            anonymousClass1.k = unmodifiableMap;
            if (anonymousClass1.n.isEmpty()) {
                unmodifiableMap2 = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap2 = Collections.unmodifiableMap(anonymousClass1.n);
            }
            anonymousClass1.n = unmodifiableMap2;
            anonymousClass1.l = true;
        }
        this.b = true;
    }

    public final Object clone() {
        FieldSet fieldSet = new FieldSet();
        SmallSortedMap.AnonymousClass1 anonymousClass1 = this.a;
        if (anonymousClass1.j.size() <= 0) {
            Iterator<T> it = anonymousClass1.d().iterator();
            if (!it.hasNext()) {
                return fieldSet;
            }
            Map.Entry entry = (Map.Entry) it.next();
            if (entry.getKey() != null) {
                d.i();
                return null;
            }
            entry.getValue();
            throw null;
        }
        Map.Entry c = anonymousClass1.c(0);
        if (c.getKey() != null) {
            d.i();
            return null;
        }
        c.getValue();
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldSet)) {
            return false;
        }
        return this.a.equals(((FieldSet) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public FieldSet() {
    }
}
