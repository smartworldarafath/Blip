package androidx.core.provider;

import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontRequestWorker;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class CallbackWrapper {
    public final TypefaceCompat.ResourcesCallbackAdapter a;
    public final Executor b;

    public CallbackWrapper(TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter, Executor executor) {
        this.a = resourcesCallbackAdapter;
        this.b = executor;
    }

    public final void a(FontRequestWorker.TypefaceResult typefaceResult) {
        final int i = typefaceResult.b;
        Executor executor = this.b;
        final TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter = this.a;
        if (i == 0) {
            final Typeface typeface = typefaceResult.a;
            ((RequestExecutor$HandlerExecutor) executor).execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.1
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesCompat.FontCallback fontCallback = TypefaceCompat.ResourcesCallbackAdapter.this.a;
                    if (fontCallback != null) {
                        fontCallback.c(typeface);
                    }
                }
            });
        } else {
            ((RequestExecutor$HandlerExecutor) executor).execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.2
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesCompat.FontCallback fontCallback = TypefaceCompat.ResourcesCallbackAdapter.this.a;
                    if (fontCallback != null) {
                        fontCallback.b(i);
                    }
                }
            });
        }
    }
}
