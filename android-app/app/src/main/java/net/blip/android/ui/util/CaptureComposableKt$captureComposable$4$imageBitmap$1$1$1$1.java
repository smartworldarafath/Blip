package net.blip.android.ui.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1 implements Function1<Picture, Unit> {
    public final /* synthetic */ CancellableContinuationImpl j;

    public CaptureComposableKt$captureComposable$4$imageBitmap$1$1$1$1(CancellableContinuationImpl cancellableContinuationImpl) {
        this.j = cancellableContinuationImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Picture picture = (Picture) obj;
        picture.getClass();
        CancellableContinuationImpl cancellableContinuationImpl = this.j;
        if (cancellableContinuationImpl.z()) {
            Bitmap createBitmap = Bitmap.createBitmap(picture.getWidth(), picture.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawPicture(picture);
            createBitmap.getClass();
            cancellableContinuationImpl.g(new AndroidImageBitmap(createBitmap));
        }
        return Unit.a;
    }
}
