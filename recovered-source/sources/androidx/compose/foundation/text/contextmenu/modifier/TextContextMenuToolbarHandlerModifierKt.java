package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.Modifier;
import defpackage.w6;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextContextMenuToolbarHandlerModifierKt {
    public static final Modifier a(Modifier modifier, ToolbarRequesterImpl toolbarRequesterImpl, Function1 function1, Function1 function12, w6 w6Var) {
        return modifier.l(new TextContextMenuToolbarHandlerElement(toolbarRequesterImpl, function1, function12, w6Var));
    }
}
