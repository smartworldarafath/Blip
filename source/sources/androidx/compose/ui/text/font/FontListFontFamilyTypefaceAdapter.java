package androidx.compose.ui.text.font;

import androidx.compose.ui.text.platform.DispatcherKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FontListFontFamilyTypefaceAdapter {
    public static final FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1 c = new AbstractCoroutineContextElement(CoroutineExceptionHandler.Key.j);
    public final AsyncTypefaceCache a;
    public final ContextScope b;

    public FontListFontFamilyTypefaceAdapter(AsyncTypefaceCache asyncTypefaceCache) {
        this.a = asyncTypefaceCache;
        HandlerContext handlerContext = DispatcherKt.a;
        FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1 fontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1 = c;
        fontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1.getClass();
        this.b = CoroutineScopeKt.a(CoroutineContext.Element.DefaultImpls.c(fontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1, handlerContext).A(EmptyCoroutineContext.j).A(SupervisorKt.a(null)));
    }
}
