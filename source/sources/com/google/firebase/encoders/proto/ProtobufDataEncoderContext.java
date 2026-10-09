package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import defpackage.q;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtobufDataEncoderContext implements ObjectEncoderContext {
    public static final Charset f = Charset.forName("UTF-8");
    public static final FieldDescriptor g;
    public static final FieldDescriptor h;
    public static final a i;
    public OutputStream a;
    public final HashMap b;
    public final HashMap c;
    public final ObjectEncoder d;
    public final ProtobufValueEncoderContext e = new ProtobufValueEncoderContext(this);

    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.firebase.encoders.proto.a, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.firebase.encoders.proto.AtProtobuf, java.lang.Object] */
    static {
        FieldDescriptor.Builder builder = new FieldDescriptor.Builder("key");
        ?? obj = new Object();
        obj.a = 1;
        g = q.d(obj, builder);
        FieldDescriptor.Builder builder2 = new FieldDescriptor.Builder("value");
        ?? obj2 = new Object();
        obj2.a = 2;
        h = q.d(obj2, builder2);
        i = new Object();
    }

    public ProtobufDataEncoderContext(ByteArrayOutputStream byteArrayOutputStream, HashMap hashMap, HashMap hashMap2, ObjectEncoder objectEncoder) {
        this.a = byteArrayOutputStream;
        this.b = hashMap;
        this.c = hashMap2;
        this.d = objectEncoder;
    }

    public static int h(FieldDescriptor fieldDescriptor) {
        Protobuf protobuf = (Protobuf) ((Annotation) fieldDescriptor.b.get(Protobuf.class));
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new RuntimeException("Field has no @Protobuf config");
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext a(FieldDescriptor fieldDescriptor, long j) {
        f(fieldDescriptor, j, true);
        return this;
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext b(FieldDescriptor fieldDescriptor, int i2) {
        d(fieldDescriptor, i2, true);
        return this;
    }

    public final ObjectEncoderContext c(FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        if (obj != null) {
            if (obj instanceof CharSequence) {
                CharSequence charSequence = (CharSequence) obj;
                if (!z || charSequence.length() != 0) {
                    i((h(fieldDescriptor) << 3) | 2);
                    byte[] bytes = charSequence.toString().getBytes(f);
                    i(bytes.length);
                    this.a.write(bytes);
                    return this;
                }
            } else if (obj instanceof Collection) {
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    c(fieldDescriptor, it.next(), false);
                }
            } else if (obj instanceof Map) {
                Iterator it2 = ((Map) obj).entrySet().iterator();
                while (it2.hasNext()) {
                    g(i, fieldDescriptor, (Map.Entry) it2.next(), false);
                }
            } else if (obj instanceof Double) {
                double doubleValue = ((Double) obj).doubleValue();
                if (!z || doubleValue != 0.0d) {
                    i((h(fieldDescriptor) << 3) | 1);
                    this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(doubleValue).array());
                    return this;
                }
            } else if (obj instanceof Float) {
                float floatValue = ((Float) obj).floatValue();
                if (!z || floatValue != 0.0f) {
                    i((h(fieldDescriptor) << 3) | 5);
                    this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(floatValue).array());
                    return this;
                }
            } else {
                if (obj instanceof Number) {
                    f(fieldDescriptor, ((Number) obj).longValue(), z);
                    return this;
                }
                if (obj instanceof Boolean) {
                    d(fieldDescriptor, ((Boolean) obj).booleanValue() ? 1 : 0, z);
                    return this;
                }
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    if (!z || bArr.length != 0) {
                        i((h(fieldDescriptor) << 3) | 2);
                        i(bArr.length);
                        this.a.write(bArr);
                        return this;
                    }
                } else {
                    ObjectEncoder objectEncoder = (ObjectEncoder) this.b.get(obj.getClass());
                    if (objectEncoder != null) {
                        g(objectEncoder, fieldDescriptor, obj, z);
                        return this;
                    }
                    ValueEncoder valueEncoder = (ValueEncoder) this.c.get(obj.getClass());
                    if (valueEncoder != null) {
                        ProtobufValueEncoderContext protobufValueEncoderContext = this.e;
                        protobufValueEncoderContext.a = false;
                        protobufValueEncoderContext.c = fieldDescriptor;
                        protobufValueEncoderContext.b = z;
                        valueEncoder.a(obj, protobufValueEncoderContext);
                        return this;
                    }
                    if (obj instanceof ProtoEnum) {
                        d(fieldDescriptor, ((ProtoEnum) obj).a(), true);
                        return this;
                    }
                    if (obj instanceof Enum) {
                        d(fieldDescriptor, ((Enum) obj).ordinal(), true);
                        return this;
                    }
                    g(this.d, fieldDescriptor, obj, z);
                    return this;
                }
            }
        }
        return this;
    }

    public final void d(FieldDescriptor fieldDescriptor, int i2, boolean z) {
        if (!z || i2 != 0) {
            Protobuf protobuf = (Protobuf) ((Annotation) fieldDescriptor.b.get(Protobuf.class));
            if (protobuf != null) {
                int ordinal = protobuf.intEncoding().ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            return;
                        }
                        i((protobuf.tag() << 3) | 5);
                        this.a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i2).array());
                        return;
                    }
                    i(protobuf.tag() << 3);
                    i((i2 << 1) ^ (i2 >> 31));
                    return;
                }
                i(protobuf.tag() << 3);
                i(i2);
                return;
            }
            throw new RuntimeException("Field has no @Protobuf config");
        }
    }

    @Override // com.google.firebase.encoders.ObjectEncoderContext
    public final ObjectEncoderContext e(FieldDescriptor fieldDescriptor, Object obj) {
        c(fieldDescriptor, obj, true);
        return this;
    }

    public final void f(FieldDescriptor fieldDescriptor, long j, boolean z) {
        if (!z || j != 0) {
            Protobuf protobuf = (Protobuf) ((Annotation) fieldDescriptor.b.get(Protobuf.class));
            if (protobuf != null) {
                int ordinal = protobuf.intEncoding().ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            return;
                        }
                        i((protobuf.tag() << 3) | 1);
                        this.a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
                        return;
                    }
                    i(protobuf.tag() << 3);
                    j((j >> 63) ^ (j << 1));
                    return;
                }
                i(protobuf.tag() << 3);
                j(j);
                return;
            }
            throw new RuntimeException("Field has no @Protobuf config");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.OutputStream, com.google.firebase.encoders.proto.LengthCountingOutputStream] */
    public final void g(ObjectEncoder objectEncoder, FieldDescriptor fieldDescriptor, Object obj, boolean z) {
        ?? outputStream = new OutputStream();
        outputStream.j = 0L;
        try {
            OutputStream outputStream2 = this.a;
            this.a = outputStream;
            try {
                objectEncoder.a(obj, this);
                this.a = outputStream2;
                long j = outputStream.j;
                outputStream.close();
                if (z && j == 0) {
                    return;
                }
                i((h(fieldDescriptor) << 3) | 2);
                j(j);
                objectEncoder.a(obj, this);
            } catch (Throwable th) {
                this.a = outputStream2;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                outputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void i(int i2) {
        while (true) {
            long j = i2 & (-128);
            OutputStream outputStream = this.a;
            if (j != 0) {
                outputStream.write((i2 & 127) | 128);
                i2 >>>= 7;
            } else {
                outputStream.write(i2 & 127);
                return;
            }
        }
    }

    public final void j(long j) {
        while (true) {
            long j2 = (-128) & j;
            OutputStream outputStream = this.a;
            if (j2 != 0) {
                outputStream.write((((int) j) & 127) | 128);
                j >>>= 7;
            } else {
                outputStream.write(((int) j) & 127);
                return;
            }
        }
    }
}
