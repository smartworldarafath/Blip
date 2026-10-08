package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SchemaUtil {
    public static final Class a;
    public static final UnknownFieldSchema b;
    public static final UnknownFieldSetLiteSchema c;

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.datastore.preferences.protobuf.UnknownFieldSetLiteSchema, java.lang.Object] */
    static {
        Class<?> cls;
        Class<?> cls2;
        Protobuf protobuf = Protobuf.c;
        UnknownFieldSchema unknownFieldSchema = null;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            Protobuf protobuf2 = Protobuf.c;
            try {
                cls2 = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                unknownFieldSchema = (UnknownFieldSchema) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        b = unknownFieldSchema;
        c = new Object();
    }

    public static int a(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.f(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.d(i) + 4) * size;
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (CodedOutputStream.d(i) + 8) * size;
    }

    public static int d(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.f(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.f(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    public static int f(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int intValue = ((Integer) list.get(i2)).intValue();
            i += CodedOutputStream.e((intValue >> 31) ^ (intValue << 1));
        }
        return i;
    }

    public static int g(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            long longValue = ((Long) list.get(i2)).longValue();
            i += CodedOutputStream.f((longValue >> 63) ^ (longValue << 1));
        }
        return i;
    }

    public static int h(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.e(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += CodedOutputStream.f(((Long) list.get(i2)).longValue());
        }
        return i;
    }

    public static void k(UnknownFieldSchema unknownFieldSchema, Object obj, Object obj2) {
        ((UnknownFieldSetLiteSchema) unknownFieldSchema).getClass();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        UnknownFieldSetLite unknownFieldSetLite = generatedMessageLite.unknownFields;
        UnknownFieldSetLite unknownFieldSetLite2 = ((GeneratedMessageLite) obj2).unknownFields;
        UnknownFieldSetLite unknownFieldSetLite3 = UnknownFieldSetLite.f;
        if (!unknownFieldSetLite3.equals(unknownFieldSetLite2)) {
            if (unknownFieldSetLite3.equals(unknownFieldSetLite)) {
                int i = unknownFieldSetLite.a + unknownFieldSetLite2.a;
                int[] copyOf = Arrays.copyOf(unknownFieldSetLite.b, i);
                System.arraycopy(unknownFieldSetLite2.b, 0, copyOf, unknownFieldSetLite.a, unknownFieldSetLite2.a);
                Object[] copyOf2 = Arrays.copyOf(unknownFieldSetLite.c, i);
                System.arraycopy(unknownFieldSetLite2.c, 0, copyOf2, unknownFieldSetLite.a, unknownFieldSetLite2.a);
                unknownFieldSetLite = new UnknownFieldSetLite(i, copyOf, copyOf2, true);
            } else {
                unknownFieldSetLite.getClass();
                if (!unknownFieldSetLite2.equals(unknownFieldSetLite3)) {
                    if (unknownFieldSetLite.e) {
                        int i2 = unknownFieldSetLite.a + unknownFieldSetLite2.a;
                        unknownFieldSetLite.a(i2);
                        System.arraycopy(unknownFieldSetLite2.b, 0, unknownFieldSetLite.b, unknownFieldSetLite.a, unknownFieldSetLite2.a);
                        System.arraycopy(unknownFieldSetLite2.c, 0, unknownFieldSetLite.c, unknownFieldSetLite.a, unknownFieldSetLite2.a);
                        unknownFieldSetLite.a = i2;
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
            }
        }
        generatedMessageLite.unknownFields = unknownFieldSetLite;
    }

    public static boolean l(Object obj, Object obj2) {
        if (obj != obj2) {
            if (obj == null || !obj.equals(obj2)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static void m(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Boolean) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3++;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.g(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.h(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
        }
    }

    public static void n(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Double) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3 += 8;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.o(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                double doubleValue = ((Double) list.get(i2)).doubleValue();
                codedOutputStream.getClass();
                codedOutputStream.n(i, Double.doubleToRawLongBits(doubleValue));
                i2++;
            }
        }
    }

    public static void o(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += CodedOutputStream.f(((Integer) list.get(i4)).intValue());
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.q(((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.p(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    public static void p(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Integer) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3 += 4;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.m(((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.l(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    public static void q(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Long) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3 += 8;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.o(((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.n(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    public static void r(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Float) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3 += 4;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.m(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                float floatValue = ((Float) list.get(i2)).floatValue();
                codedOutputStream.getClass();
                codedOutputStream.l(i, Float.floatToRawIntBits(floatValue));
                i2++;
            }
        }
    }

    public static void s(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += CodedOutputStream.f(((Integer) list.get(i4)).intValue());
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.q(((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.p(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    public static void t(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += CodedOutputStream.f(((Long) list.get(i4)).longValue());
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.z(((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.y(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    public static void u(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Integer) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3 += 4;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.m(((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.l(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    public static void v(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    ((Long) list.get(i4)).getClass();
                    Logger logger = CodedOutputStream.b;
                    i3 += 8;
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.o(((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.n(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    public static void w(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    int intValue = ((Integer) list.get(i4)).intValue();
                    i3 += CodedOutputStream.e((intValue >> 31) ^ (intValue << 1));
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    int intValue2 = ((Integer) list.get(i2)).intValue();
                    codedOutputStream.x((intValue2 >> 31) ^ (intValue2 << 1));
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                int intValue3 = ((Integer) list.get(i2)).intValue();
                codedOutputStream.w(i, (intValue3 >> 31) ^ (intValue3 << 1));
                i2++;
            }
        }
    }

    public static void x(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    long longValue = ((Long) list.get(i4)).longValue();
                    i3 += CodedOutputStream.f((longValue >> 63) ^ (longValue << 1));
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    long longValue2 = ((Long) list.get(i2)).longValue();
                    codedOutputStream.z((longValue2 >> 63) ^ (longValue2 << 1));
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                long longValue3 = ((Long) list.get(i2)).longValue();
                codedOutputStream.y(i, (longValue3 >> 63) ^ (longValue3 << 1));
                i2++;
            }
        }
    }

    public static void y(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += CodedOutputStream.e(((Integer) list.get(i4)).intValue());
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.x(((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.w(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
    }

    public static void z(int i, List list, Writer writer, boolean z) {
        if (list != null && !list.isEmpty()) {
            CodedOutputStream codedOutputStream = ((CodedOutputStreamWriter) writer).a;
            int i2 = 0;
            if (z) {
                codedOutputStream.v(i, 2);
                int i3 = 0;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    i3 += CodedOutputStream.f(((Long) list.get(i4)).longValue());
                }
                codedOutputStream.x(i3);
                while (i2 < list.size()) {
                    codedOutputStream.z(((Long) list.get(i2)).longValue());
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                codedOutputStream.y(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
        }
    }

    public static Object j(Object obj, int i, Internal.ProtobufList protobufList, Object obj2, UnknownFieldSchema unknownFieldSchema) {
        return obj2;
    }
}
