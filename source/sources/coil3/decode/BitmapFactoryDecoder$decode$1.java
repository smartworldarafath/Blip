package coil3.decode;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.Semaphore;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.decode.BitmapFactoryDecoder", f = "BitmapFactoryDecoder.kt", l = {213, 40}, m = "decode", v = 1)
/* loaded from: classes.dex */
public final class BitmapFactoryDecoder$decode$1 extends ContinuationImpl {
    public Semaphore m;
    public /* synthetic */ Object n;
    public final /* synthetic */ BitmapFactoryDecoder o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BitmapFactoryDecoder$decode$1(BitmapFactoryDecoder bitmapFactoryDecoder, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = bitmapFactoryDecoder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.a(this);
    }
}
