package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsPropertiesKt$ActionPropertyKey$1 implements Function2<AccessibilityAction<Function<? extends Boolean>>, AccessibilityAction<Function<? extends Boolean>>, AccessibilityAction<Function<? extends Boolean>>> {
    public static final SemanticsPropertiesKt$ActionPropertyKey$1 j = new Object();

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        String str;
        Function function;
        AccessibilityAction accessibilityAction = (AccessibilityAction) obj;
        AccessibilityAction accessibilityAction2 = (AccessibilityAction) obj2;
        if (accessibilityAction == null || (str = accessibilityAction.a) == null) {
            str = accessibilityAction2.a;
        }
        if (accessibilityAction == null || (function = accessibilityAction.b) == null) {
            function = accessibilityAction2.b;
        }
        return new AccessibilityAction(str, function);
    }
}
