package io.sentry.android.core;

import android.graphics.Bitmap;
import io.sentry.EventProcessor;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import java.io.ByteArrayOutputStream;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ EventProcessor b;
    public final /* synthetic */ Object c;

    public /* synthetic */ k(EventProcessor eventProcessor, Object obj, int i) {
        this.a = i;
        this.b = eventProcessor;
        this.c = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.c;
        EventProcessor eventProcessor = this.b;
        switch (i) {
            case 0:
                return DeviceInfoUtil.c(((DefaultAndroidEventProcessor) eventProcessor).j, (SentryAndroidOptions) obj);
            default:
                Bitmap bitmap = (Bitmap) obj;
                ILogger logger = ((ScreenshotEventProcessor) eventProcessor).j.getLogger();
                byte[] bArr = null;
                if (!bitmap.isRecycled()) {
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
                            bitmap.recycle();
                            if (byteArrayOutputStream.size() <= 0) {
                                logger.c(SentryLevel.DEBUG, "Screenshot is 0 bytes, not attaching the image.", new Object[0]);
                                byteArrayOutputStream.close();
                            } else {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                byteArrayOutputStream.close();
                                bArr = byteArray;
                            }
                        } catch (Throwable th) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        logger.b(SentryLevel.ERROR, "Compressing bitmap failed.", th3);
                    }
                }
                return bArr;
        }
    }
}
