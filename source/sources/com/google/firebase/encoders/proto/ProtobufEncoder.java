package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.config.EncoderConfig;
import defpackage.z9;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ProtobufEncoder {
    public final HashMap a;
    public final HashMap b;
    public final ObjectEncoder c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder implements EncoderConfig<Builder> {
        public static final z9 d = new z9(1);
        public final HashMap a = new HashMap();
        public final HashMap b = new HashMap();
        public final z9 c = d;

        public final EncoderConfig a(Class cls, ObjectEncoder objectEncoder) {
            this.a.put(cls, objectEncoder);
            this.b.remove(cls);
            return this;
        }
    }

    public ProtobufEncoder(HashMap hashMap, HashMap hashMap2, z9 z9Var) {
        this.a = hashMap;
        this.b = hashMap2;
        this.c = z9Var;
    }

    public final void a(Object obj, ByteArrayOutputStream byteArrayOutputStream) {
        HashMap hashMap = this.b;
        ObjectEncoder objectEncoder = this.c;
        HashMap hashMap2 = this.a;
        ProtobufDataEncoderContext protobufDataEncoderContext = new ProtobufDataEncoderContext(byteArrayOutputStream, hashMap2, hashMap, objectEncoder);
        ObjectEncoder objectEncoder2 = (ObjectEncoder) hashMap2.get(obj.getClass());
        if (objectEncoder2 != null) {
            objectEncoder2.a(obj, protobufDataEncoderContext);
            return;
        }
        throw new RuntimeException("No encoder for " + obj.getClass());
    }
}
