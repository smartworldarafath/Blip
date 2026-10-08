package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.protobuf.AbstractMessageLite;
import androidx.datastore.preferences.protobuf.CodedInputStream;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite.Builder;
import androidx.datastore.preferences.protobuf.Internal;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GeneratedMessageLite<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite<MessageType, BuilderType> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected UnknownFieldSetLite unknownFields;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Builder<MessageType extends GeneratedMessageLite<MessageType, BuilderType>, BuilderType extends Builder<MessageType, BuilderType>> extends AbstractMessageLite.Builder<MessageType, BuilderType> {
        public final GeneratedMessageLite j;
        public GeneratedMessageLite k;

        public Builder(GeneratedMessageLite generatedMessageLite) {
            this.j = generatedMessageLite;
            if (!generatedMessageLite.i()) {
                this.k = generatedMessageLite.m();
            } else {
                u2.g("Default instance must be immutable.");
                throw null;
            }
        }

        public final GeneratedMessageLite a() {
            GeneratedMessageLite b = b();
            b.getClass();
            if (GeneratedMessageLite.h(b, true)) {
                return b;
            }
            throw new UninitializedMessageException();
        }

        public final GeneratedMessageLite b() {
            boolean i = this.k.i();
            GeneratedMessageLite generatedMessageLite = this.k;
            if (!i) {
                return generatedMessageLite;
            }
            generatedMessageLite.getClass();
            Protobuf protobuf = Protobuf.c;
            protobuf.getClass();
            protobuf.a(generatedMessageLite.getClass()).b(generatedMessageLite);
            generatedMessageLite.j();
            return this.k;
        }

        public final void c() {
            if (!this.k.i()) {
                GeneratedMessageLite m = this.j.m();
                GeneratedMessageLite generatedMessageLite = this.k;
                Protobuf protobuf = Protobuf.c;
                protobuf.getClass();
                protobuf.a(m.getClass()).a(m, generatedMessageLite);
                this.k = m;
            }
        }

        public final Object clone() {
            Builder builder = (Builder) this.j.d(MethodToInvoke.n);
            builder.k = b();
            return builder;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DefaultInstanceBasedParser<T extends GeneratedMessageLite<T, ?>> extends AbstractParser<T> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MethodToInvoke {
        public static final MethodToInvoke j;
        public static final MethodToInvoke k;
        public static final MethodToInvoke l;
        public static final MethodToInvoke m;
        public static final MethodToInvoke n;
        public static final MethodToInvoke o;
        public static final /* synthetic */ MethodToInvoke[] p;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.datastore.preferences.protobuf.GeneratedMessageLite$MethodToInvoke] */
        static {
            ?? r0 = new Enum("GET_MEMOIZED_IS_INITIALIZED", GeneratedMessageLite.UNINITIALIZED_HASH_CODE);
            j = r0;
            ?? r1 = new Enum("SET_MEMOIZED_IS_INITIALIZED", 1);
            k = r1;
            ?? r2 = new Enum("BUILD_MESSAGE_INFO", 2);
            l = r2;
            ?? r3 = new Enum("NEW_MUTABLE_INSTANCE", 3);
            m = r3;
            ?? r4 = new Enum("NEW_BUILDER", 4);
            n = r4;
            ?? r5 = new Enum("GET_DEFAULT_INSTANCE", 5);
            o = r5;
            p = new MethodToInvoke[]{r0, r1, r2, r3, r4, r5, new Enum("GET_PARSER", 6)};
        }

        public static MethodToInvoke valueOf(String str) {
            return (MethodToInvoke) Enum.valueOf(MethodToInvoke.class, str);
        }

        public static MethodToInvoke[] values() {
            return (MethodToInvoke[]) p.clone();
        }
    }

    public GeneratedMessageLite() {
        this.memoizedHashCode = UNINITIALIZED_HASH_CODE;
        this.memoizedSerializedSize = -1;
        this.unknownFields = UnknownFieldSetLite.f;
    }

    public static Internal.ProtobufList e() {
        return ProtobufArrayList.m;
    }

    public static GeneratedMessageLite f(Class cls) {
        GeneratedMessageLite<?, ?> generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (generatedMessageLite == null) {
            GeneratedMessageLite<?, ?> generatedMessageLite2 = (GeneratedMessageLite) ((GeneratedMessageLite) UnsafeUtil.d(cls)).d(MethodToInvoke.o);
            if (generatedMessageLite2 != null) {
                defaultInstanceMap.put(cls, generatedMessageLite2);
                return generatedMessageLite2;
            }
            d.d();
            return null;
        }
        return generatedMessageLite;
    }

    public static Object g(Method method, GeneratedMessageLite generatedMessageLite, Object... objArr) {
        try {
            return method.invoke(generatedMessageLite, objArr);
        } catch (IllegalAccessException e) {
            u2.k("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (!(cause instanceof Error)) {
                    u2.k("Unexpected exception thrown by generated accessor method.", cause);
                    return null;
                }
                throw ((Error) cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static final boolean h(GeneratedMessageLite generatedMessageLite, boolean z) {
        byte byteValue = ((Byte) generatedMessageLite.d(MethodToInvoke.j)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        Protobuf protobuf = Protobuf.c;
        protobuf.getClass();
        boolean c = protobuf.a(generatedMessageLite.getClass()).c(generatedMessageLite);
        if (z) {
            generatedMessageLite.d(MethodToInvoke.k);
        }
        return c;
    }

    public static Internal.ProtobufList k(Internal.ProtobufList protobufList) {
        int i;
        int size = protobufList.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size * 2;
        }
        return ((ProtobufArrayList) protobufList).d(i);
    }

    public static Object l(GeneratedMessageLite generatedMessageLite, String str, Object[] objArr) {
        return new RawMessageInfo(generatedMessageLite, str, objArr);
    }

    public static GeneratedMessageLite n(PreferencesProto$PreferenceMap preferencesProto$PreferenceMap, FileInputStream fileInputStream) {
        CodedInputStream.StreamDecoder streamDecoder = new CodedInputStream.StreamDecoder(fileInputStream);
        ExtensionRegistryLite a = ExtensionRegistryLite.a();
        GeneratedMessageLite m = preferencesProto$PreferenceMap.m();
        try {
            Protobuf protobuf = Protobuf.c;
            protobuf.getClass();
            Schema a2 = protobuf.a(m.getClass());
            CodedInputStreamReader codedInputStreamReader = streamDecoder.b;
            if (codedInputStreamReader == null) {
                codedInputStreamReader = new CodedInputStreamReader(streamDecoder);
            }
            a2.h(m, codedInputStreamReader, a);
            a2.b(m);
            if (h(m, true)) {
                return m;
            }
            throw new IOException(new UninitializedMessageException().getMessage());
        } catch (InvalidProtocolBufferException e) {
            if (e.j) {
                throw new IOException(e.getMessage(), e);
            }
            throw e;
        } catch (UninitializedMessageException e2) {
            throw new IOException(e2.getMessage());
        } catch (IOException e3) {
            if (e3.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e3.getCause());
            }
            throw new IOException(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw e4;
        }
    }

    public static void o(Class cls, GeneratedMessageLite generatedMessageLite) {
        generatedMessageLite.j();
        defaultInstanceMap.put(cls, generatedMessageLite);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractMessageLite
    public final int b(Schema schema) {
        int d;
        int d2;
        if (i()) {
            if (schema == null) {
                Protobuf protobuf = Protobuf.c;
                protobuf.getClass();
                d2 = protobuf.a(getClass()).d(this);
            } else {
                d2 = schema.d(this);
            }
            if (d2 >= 0) {
                return d2;
            }
            u2.l(q.g(d2, "serialized size must be non-negative, was "));
            return UNINITIALIZED_HASH_CODE;
        }
        int i = this.memoizedSerializedSize;
        if ((i & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i & Integer.MAX_VALUE;
        }
        if (schema == null) {
            Protobuf protobuf2 = Protobuf.c;
            protobuf2.getClass();
            d = protobuf2.a(getClass()).d(this);
        } else {
            d = schema.d(this);
        }
        p(d);
        return d;
    }

    public abstract Object d(MethodToInvoke methodToInvoke);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Protobuf protobuf = Protobuf.c;
        protobuf.getClass();
        return protobuf.a(getClass()).g(this, (GeneratedMessageLite) obj);
    }

    public final int hashCode() {
        if (i()) {
            Protobuf protobuf = Protobuf.c;
            protobuf.getClass();
            return protobuf.a(getClass()).e(this);
        }
        if (this.memoizedHashCode == 0) {
            Protobuf protobuf2 = Protobuf.c;
            protobuf2.getClass();
            this.memoizedHashCode = protobuf2.a(getClass()).e(this);
        }
        return this.memoizedHashCode;
    }

    public final boolean i() {
        if ((this.memoizedSerializedSize & MUTABLE_FLAG_MASK) != 0) {
            return true;
        }
        return false;
    }

    public final void j() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    public final GeneratedMessageLite m() {
        return (GeneratedMessageLite) d(MethodToInvoke.m);
    }

    public final void p(int i) {
        if (i >= 0) {
            this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & MUTABLE_FLAG_MASK);
        } else {
            u2.l(q.g(i, "serialized size must be non-negative, was "));
        }
    }

    public final void q(CodedOutputStream codedOutputStream) {
        Protobuf protobuf = Protobuf.c;
        protobuf.getClass();
        Schema a = protobuf.a(getClass());
        CodedOutputStreamWriter codedOutputStreamWriter = codedOutputStream.a;
        if (codedOutputStreamWriter == null) {
            codedOutputStreamWriter = new CodedOutputStreamWriter(codedOutputStream);
        }
        a.f(this, codedOutputStreamWriter);
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = MessageLiteToString.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        MessageLiteToString.c(this, sb, UNINITIALIZED_HASH_CODE);
        return sb.toString();
    }
}
