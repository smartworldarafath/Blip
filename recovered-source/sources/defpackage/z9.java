package defpackage;

import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z9 implements ObjectEncoder {
    public final /* synthetic */ int a;

    @Override // com.google.firebase.encoders.ObjectEncoder
    public final void a(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                z9 z9Var = JsonDataEncoderBuilder.e;
                throw new RuntimeException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
            default:
                throw new RuntimeException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }
    }
}
