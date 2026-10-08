package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import defpackage.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GeneratedMessageInfoFactory implements MessageInfoFactory {
    public static final GeneratedMessageInfoFactory a = new Object();

    @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
    public final MessageInfo a(Class cls) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            try {
                return (MessageInfo) GeneratedMessageLite.f(cls.asSubclass(GeneratedMessageLite.class)).d(GeneratedMessageLite.MethodToInvoke.l);
            } catch (Exception e) {
                u2.k("Unable to get message info for ".concat(cls.getName()), e);
                return null;
            }
        }
        u2.g("Unsupported message type: ".concat(cls.getName()));
        return null;
    }

    @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
    public final boolean b(Class cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }
}
