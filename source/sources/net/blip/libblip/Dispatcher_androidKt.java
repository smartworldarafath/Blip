package net.blip.libblip;

import kotlin.jvm.functions.Function1;
import kotlin.text.Charsets;
import net.blip.libblip.event.NotificationTokenGenerated;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Dispatcher_androidKt {
    public static final void a(String str, Function1 function1) {
        function1.getClass();
        str.getClass();
        ByteString byteString = ByteString.m;
        byte[] bytes = str.getBytes(Charsets.a);
        bytes.getClass();
        function1.b(new NotificationTokenGenerated(2, ByteString.Companion.c(bytes), ByteString.m));
    }
}
