package androidx.work;

import defpackage.a7;
import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Data {
    public static final Data b = new Builder().a();
    public final HashMap a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final LinkedHashMap a = new LinkedHashMap();

        public final Data a() {
            Data data = new Data(this.a);
            Companion.c(data);
            return data;
        }

        public final void b(HashMap hashMap) {
            Object[] objArr;
            hashMap.getClass();
            for (Map.Entry entry : hashMap.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                str.getClass();
                if (value == null) {
                    value = null;
                } else {
                    ClassReference a = Reflection.a(value.getClass());
                    if (!a.equals(Reflection.a(Boolean.TYPE)) && !a.equals(Reflection.a(Byte.TYPE)) && !a.equals(Reflection.a(Integer.TYPE)) && !a.equals(Reflection.a(Long.TYPE)) && !a.equals(Reflection.a(Float.TYPE)) && !a.equals(Reflection.a(Double.TYPE)) && !a.equals(Reflection.a(String.class)) && !a.equals(Reflection.a(Boolean[].class)) && !a.equals(Reflection.a(Byte[].class)) && !a.equals(Reflection.a(Integer[].class)) && !a.equals(Reflection.a(Long[].class)) && !a.equals(Reflection.a(Float[].class)) && !a.equals(Reflection.a(Double[].class)) && !a.equals(Reflection.a(String[].class))) {
                        int i = 0;
                        if (a.equals(Reflection.a(boolean[].class))) {
                            boolean[] zArr = (boolean[]) value;
                            String str2 = Data_Kt.a;
                            int length = zArr.length;
                            objArr = new Boolean[length];
                            while (i < length) {
                                objArr[i] = Boolean.valueOf(zArr[i]);
                                i++;
                            }
                        } else if (a.equals(Reflection.a(byte[].class))) {
                            byte[] bArr = (byte[]) value;
                            String str3 = Data_Kt.a;
                            int length2 = bArr.length;
                            objArr = new Byte[length2];
                            while (i < length2) {
                                objArr[i] = Byte.valueOf(bArr[i]);
                                i++;
                            }
                        } else if (a.equals(Reflection.a(int[].class))) {
                            int[] iArr = (int[]) value;
                            String str4 = Data_Kt.a;
                            int length3 = iArr.length;
                            objArr = new Integer[length3];
                            while (i < length3) {
                                objArr[i] = Integer.valueOf(iArr[i]);
                                i++;
                            }
                        } else if (a.equals(Reflection.a(long[].class))) {
                            long[] jArr = (long[]) value;
                            String str5 = Data_Kt.a;
                            int length4 = jArr.length;
                            objArr = new Long[length4];
                            while (i < length4) {
                                objArr[i] = Long.valueOf(jArr[i]);
                                i++;
                            }
                        } else if (a.equals(Reflection.a(float[].class))) {
                            float[] fArr = (float[]) value;
                            String str6 = Data_Kt.a;
                            int length5 = fArr.length;
                            objArr = new Float[length5];
                            while (i < length5) {
                                objArr[i] = Float.valueOf(fArr[i]);
                                i++;
                            }
                        } else if (a.equals(Reflection.a(double[].class))) {
                            double[] dArr = (double[]) value;
                            String str7 = Data_Kt.a;
                            int length6 = dArr.length;
                            objArr = new Double[length6];
                            while (i < length6) {
                                objArr[i] = Double.valueOf(dArr[i]);
                                i++;
                            }
                        } else {
                            u2.m("Key ", str, " has invalid type ", a);
                            return;
                        }
                        value = objArr;
                    }
                }
                this.a.put(str, value);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Data a(byte[] bArr) {
            boolean z;
            bArr.getClass();
            if (bArr.length <= 10240) {
                if (bArr.length == 0) {
                    return Data.b;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    byte[] bArr2 = new byte[2];
                    byteArrayInputStream.read(bArr2);
                    int i = 0;
                    if (bArr2[0] == -84 && bArr2[1] == -19) {
                        z = true;
                    } else {
                        z = false;
                    }
                    byteArrayInputStream.reset();
                    if (z) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                        try {
                            int readInt = objectInputStream.readInt();
                            while (i < readInt) {
                                linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                                i++;
                            }
                            objectInputStream.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(objectInputStream, th);
                                throw th2;
                            }
                        }
                    } else {
                        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                        try {
                            short readShort = dataInputStream.readShort();
                            if (readShort == -21521) {
                                short readShort2 = dataInputStream.readShort();
                                if (readShort2 != 1) {
                                    u2.f(q.g(readShort2, "Unsupported version number: "));
                                }
                            } else {
                                u2.f(q.g(readShort, "Magic number doesn't match: "));
                            }
                            int readInt2 = dataInputStream.readInt();
                            while (i < readInt2) {
                                linkedHashMap.put(dataInputStream.readUTF(), b(dataInputStream, dataInputStream.readByte()));
                                i++;
                            }
                            dataInputStream.close();
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                CloseableKt.a(dataInputStream, th3);
                                throw th4;
                            }
                        }
                    }
                } catch (IOException e) {
                    Logger.d().c(Data_Kt.a, "Error in Data#fromByteArray: ", e);
                } catch (ClassNotFoundException e2) {
                    Logger.d().c(Data_Kt.a, "Error in Data#fromByteArray: ", e2);
                }
                return new Data(linkedHashMap);
            }
            u2.l("Data cannot occupy more than 10240 bytes when serialized");
            return null;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Double[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Float[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Long[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Integer[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Byte[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Boolean[], java.io.Serializable] */
        /* JADX WARN: Type inference failed for: r1v14, types: [java.lang.String[], java.io.Serializable] */
        public static final Serializable b(DataInputStream dataInputStream, byte b) {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int readInt = dataInputStream.readInt();
                ?? r0 = new Boolean[readInt];
                while (i < readInt) {
                    r0[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return r0;
            }
            if (b == 9) {
                int readInt2 = dataInputStream.readInt();
                ?? r02 = new Byte[readInt2];
                while (i < readInt2) {
                    r02[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return r02;
            }
            if (b == 10) {
                int readInt3 = dataInputStream.readInt();
                ?? r03 = new Integer[readInt3];
                while (i < readInt3) {
                    r03[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return r03;
            }
            if (b == 11) {
                int readInt4 = dataInputStream.readInt();
                ?? r04 = new Long[readInt4];
                while (i < readInt4) {
                    r04[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return r04;
            }
            if (b == 12) {
                int readInt5 = dataInputStream.readInt();
                ?? r05 = new Float[readInt5];
                while (i < readInt5) {
                    r05[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return r05;
            }
            if (b == 13) {
                int readInt6 = dataInputStream.readInt();
                ?? r06 = new Double[readInt6];
                while (i < readInt6) {
                    r06[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return r06;
            }
            if (b == 14) {
                int readInt7 = dataInputStream.readInt();
                ?? r1 = new String[readInt7];
                while (i < readInt7) {
                    String readUTF = dataInputStream.readUTF();
                    if (Intrinsics.a(readUTF, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                        readUTF = null;
                    }
                    r1[i] = readUTF;
                    i++;
                }
                return r1;
            }
            u2.l(q.g(b, "Unsupported type "));
            return null;
        }

        public static byte[] c(Data data) {
            data.getClass();
            HashMap hashMap = data.a;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(-21521);
                    dataOutputStream.writeShort(1);
                    dataOutputStream.writeInt(hashMap.size());
                    for (Map.Entry entry : hashMap.entrySet()) {
                        d(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() <= 10240) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        dataOutputStream.close();
                        byteArray.getClass();
                        return byteArray;
                    }
                    throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                } finally {
                }
            } catch (IOException e) {
                Logger.d().c(Data_Kt.a, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        public static final void d(DataOutputStream dataOutputStream, String str, Object obj) {
            int i;
            double d;
            float f;
            long j;
            int i2;
            byte b;
            boolean z;
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else if (obj instanceof Object[]) {
                Object[] objArr = (Object[]) obj;
                ClassReference a = Reflection.a(objArr.getClass());
                if (a.equals(Reflection.a(Boolean[].class))) {
                    i = 8;
                } else if (a.equals(Reflection.a(Byte[].class))) {
                    i = 9;
                } else if (a.equals(Reflection.a(Integer[].class))) {
                    i = 10;
                } else if (a.equals(Reflection.a(Long[].class))) {
                    i = 11;
                } else if (a.equals(Reflection.a(Float[].class))) {
                    i = 12;
                } else if (a.equals(Reflection.a(Double[].class))) {
                    i = 13;
                } else if (a.equals(Reflection.a(String[].class))) {
                    i = 14;
                } else {
                    fe.w(Reflection.a(objArr.getClass()).b(), "Unsupported value type ");
                    return;
                }
                dataOutputStream.writeByte(i);
                dataOutputStream.writeInt(objArr.length);
                for (Object obj2 : objArr) {
                    String str2 = null;
                    Boolean bool = null;
                    Byte b2 = null;
                    Integer num = null;
                    Long l = null;
                    Float f2 = null;
                    Double d2 = null;
                    if (i == 8) {
                        if (obj2 instanceof Boolean) {
                            bool = (Boolean) obj2;
                        }
                        if (bool != null) {
                            z = bool.booleanValue();
                        } else {
                            z = false;
                        }
                        dataOutputStream.writeBoolean(z);
                    } else if (i == 9) {
                        if (obj2 instanceof Byte) {
                            b2 = (Byte) obj2;
                        }
                        if (b2 != null) {
                            b = b2.byteValue();
                        } else {
                            b = 0;
                        }
                        dataOutputStream.writeByte(b);
                    } else if (i == 10) {
                        if (obj2 instanceof Integer) {
                            num = (Integer) obj2;
                        }
                        if (num != null) {
                            i2 = num.intValue();
                        } else {
                            i2 = 0;
                        }
                        dataOutputStream.writeInt(i2);
                    } else if (i == 11) {
                        if (obj2 instanceof Long) {
                            l = (Long) obj2;
                        }
                        if (l != null) {
                            j = l.longValue();
                        } else {
                            j = 0;
                        }
                        dataOutputStream.writeLong(j);
                    } else if (i == 12) {
                        if (obj2 instanceof Float) {
                            f2 = (Float) obj2;
                        }
                        if (f2 != null) {
                            f = f2.floatValue();
                        } else {
                            f = 0.0f;
                        }
                        dataOutputStream.writeFloat(f);
                    } else if (i == 13) {
                        if (obj2 instanceof Double) {
                            d2 = (Double) obj2;
                        }
                        if (d2 != null) {
                            d = d2.doubleValue();
                        } else {
                            d = 0.0d;
                        }
                        dataOutputStream.writeDouble(d);
                    } else if (i == 14) {
                        if (obj2 instanceof String) {
                            str2 = (String) obj2;
                        }
                        if (str2 == null) {
                            str2 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                        }
                        dataOutputStream.writeUTF(str2);
                    }
                }
            } else {
                fe.w(Reflection.a(obj.getClass()).c(), "Unsupported value type ");
                return;
            }
            dataOutputStream.writeUTF(str);
        }
    }

    public Data(Data data) {
        data.getClass();
        this.a = new HashMap(data.a);
    }

    public final boolean a(String str) {
        Object obj = this.a.get(str);
        if (obj != null && String.class.isAssignableFrom(obj.getClass())) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (obj != null && Data.class.equals(obj.getClass())) {
                HashMap hashMap = ((Data) obj).a;
                HashMap hashMap2 = this.a;
                Set<String> keySet = hashMap2.keySet();
                if (Intrinsics.a(keySet, hashMap.keySet())) {
                    for (String str : keySet) {
                        Object obj2 = hashMap2.get(str);
                        Object obj3 = hashMap.get(str);
                        if (obj2 != null && obj3 != null) {
                            if (obj2 instanceof Object[]) {
                                Object[] objArr = (Object[]) obj2;
                                if (obj3 instanceof Object[]) {
                                    z = ArraysKt.d(objArr, (Object[]) obj3);
                                }
                            }
                            z = obj2.equals(obj3);
                        } else if (obj2 == obj3) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        for (Map.Entry entry : this.a.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Object[]) {
                hashCode = Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value);
            } else {
                hashCode = entry.hashCode();
            }
            i += hashCode;
        }
        return i * 31;
    }

    public final String toString() {
        return q.l(new StringBuilder("Data {"), CollectionsKt.y(this.a.entrySet(), null, null, null, new a7(1), 31), "}");
    }

    public Data(LinkedHashMap linkedHashMap) {
        linkedHashMap.getClass();
        this.a = new HashMap(linkedHashMap);
    }
}
