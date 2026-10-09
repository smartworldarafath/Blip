package androidx.media3.extractor.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EventMessageEncoder {
    public final ByteArrayOutputStream a;
    public final DataOutputStream b;

    public EventMessageEncoder() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.a = byteArrayOutputStream;
        this.b = new DataOutputStream(byteArrayOutputStream);
    }
}
