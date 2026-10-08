package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import defpackage.ma;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextContextMenuModifierKt {
    public static final TextContextMenuData a(DelegatableNode delegatableNode) {
        TextContextMenuSeparator textContextMenuSeparator;
        TextContextMenuBuilderScope textContextMenuBuilderScope = new TextContextMenuBuilderScope();
        TraversableNodeKt.a(delegatableNode, TextContextMenuDataTraverseKey.a, new ma(28, new ma(27, textContextMenuBuilderScope), new FunctionReference(1, textContextMenuBuilderScope, TextContextMenuBuilderScope.class, "addFilter", "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V", 0)));
        MutableObjectList mutableObjectList = new MutableObjectList();
        MutableObjectList mutableObjectList2 = textContextMenuBuilderScope.a;
        Object[] objArr = mutableObjectList2.a;
        int i = mutableObjectList2.b;
        Object obj = null;
        int i2 = 0;
        boolean z = true;
        TextContextMenuComponent textContextMenuComponent = null;
        while (true) {
            textContextMenuSeparator = TextContextMenuSeparator.b;
            if (i2 >= i) {
                break;
            }
            TextContextMenuComponent textContextMenuComponent2 = (TextContextMenuComponent) objArr[i2];
            if (!z || textContextMenuComponent2 != textContextMenuSeparator) {
                if (textContextMenuComponent2 != textContextMenuSeparator || textContextMenuComponent != textContextMenuSeparator) {
                    if (textContextMenuComponent2 != textContextMenuSeparator) {
                        MutableObjectList mutableObjectList3 = textContextMenuBuilderScope.b;
                        Object[] objArr2 = mutableObjectList3.a;
                        int i3 = mutableObjectList3.b;
                        for (int i4 = 0; i4 < i3; i4++) {
                            if (((Boolean) ((Function1) objArr2[i4]).b(textContextMenuComponent2)).booleanValue()) {
                            }
                        }
                    }
                    mutableObjectList.g(textContextMenuComponent2);
                    z = false;
                    textContextMenuComponent = textContextMenuComponent2;
                }
                z = false;
                break;
            }
            i2++;
        }
        if (!mutableObjectList.d()) {
            obj = mutableObjectList.a[mutableObjectList.b - 1];
        }
        if (((TextContextMenuComponent) obj) == textContextMenuSeparator) {
            mutableObjectList.m(mutableObjectList.b - 1);
        }
        return new TextContextMenuData(mutableObjectList.j());
    }
}
