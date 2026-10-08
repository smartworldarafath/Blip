package androidx.datastore.preferences.protobuf;

import defpackage.fe;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ManifestSchemaFactory {
    public static final AnonymousClass1 b = new Object();
    public final CompositeMessageInfoFactory a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.datastore.preferences.protobuf.ManifestSchemaFactory$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements MessageInfoFactory {
        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final MessageInfo a(Class cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final boolean b(Class cls) {
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class CompositeMessageInfoFactory implements MessageInfoFactory {
        public MessageInfoFactory[] a;

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final MessageInfo a(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.a) {
                if (messageInfoFactory.b(cls)) {
                    return messageInfoFactory.a(cls);
                }
            }
            fe.t("No factory is available for message type: ".concat(cls.getName()));
            return null;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final boolean b(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.a) {
                if (messageInfoFactory.b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.ManifestSchemaFactory$CompositeMessageInfoFactory, java.lang.Object] */
    public ManifestSchemaFactory() {
        MessageInfoFactory messageInfoFactory;
        Protobuf protobuf = Protobuf.c;
        try {
            messageInfoFactory = (MessageInfoFactory) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            messageInfoFactory = b;
        }
        MessageInfoFactory[] messageInfoFactoryArr = {GeneratedMessageInfoFactory.a, messageInfoFactory};
        ?? obj = new Object();
        obj.a = messageInfoFactoryArr;
        Charset charset = Internal.a;
        this.a = obj;
    }
}
