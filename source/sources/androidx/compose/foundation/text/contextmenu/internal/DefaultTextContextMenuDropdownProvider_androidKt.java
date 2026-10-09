package androidx.compose.foundation.text.contextmenu.internal;

import android.app.RemoteAction;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProvider;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import defpackage.a0;
import defpackage.b1;
import defpackage.h2;
import defpackage.kb;
import defpackage.p0;
import defpackage.r1;
import defpackage.tg;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DefaultTextContextMenuDropdownProvider_androidKt {
    public static final PopupProperties a = new PopupProperties(30);

    public static final void a(final TextContextMenuSession textContextMenuSession, final TextContextMenuData textContextMenuData, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1904307118);
        if (gapComposer.f(textContextMenuSession)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(textContextMenuData)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        boolean z2 = false;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            gapComposer.W(-1009482584);
            final Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            gapComposer.p(false);
            boolean h = gapComposer.h(textContextMenuData);
            if ((i5 & 14) == 4) {
                z2 = true;
            }
            boolean h2 = h | z2 | gapComposer.h(context);
            Object K = gapComposer.K();
            if (h2 || K == Composer.Companion.a) {
                K = new Function1() { // from class: androidx.compose.foundation.text.contextmenu.internal.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        ContextMenuScope contextMenuScope = (ContextMenuScope) obj;
                        PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.a;
                        List list = TextContextMenuData.this.a;
                        int size = list.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i6);
                            ComposableLambdaImpl composableLambdaImpl = null;
                            if (textContextMenuComponent instanceof TextContextMenuItem) {
                                final TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                                defpackage.d dVar = new defpackage.d(7, textContextMenuItem);
                                if (textContextMenuItem.c != 0) {
                                    composableLambdaImpl = new ComposableLambdaImpl(-1930700965, true, new Function3<Color, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object f(Object obj2, Object obj3, Object obj4) {
                                            boolean z3;
                                            int i7;
                                            long j = ((Color) obj2).a;
                                            Composer composer2 = (Composer) obj3;
                                            int intValue = ((Number) obj4).intValue();
                                            if ((intValue & 6) == 0) {
                                                if (((GapComposer) composer2).e(j)) {
                                                    i7 = 4;
                                                } else {
                                                    i7 = 2;
                                                }
                                                intValue |= i7;
                                            }
                                            if ((intValue & 19) != 18) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            GapComposer gapComposer2 = (GapComposer) composer2;
                                            if (gapComposer2.N(intValue & 1, z3)) {
                                                DefaultTextContextMenuDropdownProvider_androidKt.b(TextContextMenuItem.this.c, (intValue << 3) & 112, j, gapComposer2);
                                            } else {
                                                gapComposer2.Q();
                                            }
                                            return Unit.a;
                                        }
                                    });
                                }
                                ContextMenuScope.b(contextMenuScope, dVar, composableLambdaImpl, new p0(11, textContextMenuItem, textContextMenuSession), 6);
                            } else if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                                TextContextMenuTextClassificationItem textContextMenuTextClassificationItem = (TextContextMenuTextClassificationItem) textContextMenuComponent;
                                Context context2 = context;
                                if (context2 != null) {
                                    int i7 = textContextMenuTextClassificationItem.c;
                                    TextClassification textClassification = textContextMenuTextClassificationItem.b;
                                    final Drawable drawable = textContextMenuTextClassificationItem.d;
                                    if (i7 < 0) {
                                        defpackage.d dVar2 = new defpackage.d(23, textClassification);
                                        if (drawable != null) {
                                            composableLambdaImpl = new ComposableLambdaImpl(-1123224187, true, new Function3<Color, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$2$1
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object f(Object obj2, Object obj3, Object obj4) {
                                                    boolean z3;
                                                    long j = ((Color) obj2).a;
                                                    Composer composer2 = (Composer) obj3;
                                                    int intValue = ((Number) obj4).intValue();
                                                    if ((intValue & 17) != 16) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                                    if (gapComposer2.N(intValue & 1, z3)) {
                                                        TextContextMenuHelperApi28.a.a(drawable, gapComposer2, 48);
                                                    } else {
                                                        gapComposer2.Q();
                                                    }
                                                    return Unit.a;
                                                }
                                            });
                                        }
                                        ContextMenuScope.b(contextMenuScope, dVar2, composableLambdaImpl, new tg(0, context2, textClassification), 6);
                                    } else {
                                        RemoteAction remoteAction = textClassification.getActions().get(i7);
                                        defpackage.d dVar3 = new defpackage.d(24, remoteAction);
                                        if (drawable != null) {
                                            composableLambdaImpl = new ComposableLambdaImpl(1106162332, true, new Function3<Color, Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28$textClassificationItem$5$1
                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object f(Object obj2, Object obj3, Object obj4) {
                                                    boolean z3;
                                                    long j = ((Color) obj2).a;
                                                    Composer composer2 = (Composer) obj3;
                                                    int intValue = ((Number) obj4).intValue();
                                                    if ((intValue & 17) != 16) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                                    if (gapComposer2.N(intValue & 1, z3)) {
                                                        TextContextMenuHelperApi28.a.a(drawable, gapComposer2, 48);
                                                    } else {
                                                        gapComposer2.Q();
                                                    }
                                                    return Unit.a;
                                                }
                                            });
                                        }
                                        ContextMenuScope.b(contextMenuScope, dVar3, composableLambdaImpl, new kb(18, remoteAction), 6);
                                    }
                                }
                            } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                                contextMenuScope.a.add(ComposableSingletons$ContextMenuUiKt.b);
                            }
                        }
                        return Unit.a;
                    }
                };
                gapComposer.g0(K);
            }
            ContextMenuUiKt.b(null, null, (Function1) K, gapComposer, 0, 3);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 8, textContextMenuSession, textContextMenuData);
        }
    }

    public static final void b(final int i, final int i2, final long j, Composer composer) {
        final int i3;
        int i4;
        boolean z;
        RecomposeScopeImpl r;
        Function2 function2;
        boolean z2;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1240244237);
        if ((i2 & 6) == 0) {
            i3 = i;
            if (gapComposer.d(i3)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i4 = i2 | i6;
        } else {
            i3 = i;
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if (gapComposer.e(j)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i4 |= i5;
        }
        boolean z3 = true;
        if ((i4 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            boolean f = gapComposer.f(context);
            if ((i4 & 14) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z4 = z2 | f;
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z4 || K == composer$Companion$Empty$1) {
                K = Integer.valueOf(context.obtainStyledAttributes(new int[]{i3}).getResourceId(0, -1));
                gapComposer.g0(K);
            }
            int intValue = ((Number) K).intValue();
            if (intValue == -1) {
                r = gapComposer.r();
                if (r != null) {
                    final int i7 = 1;
                    function2 = new Function2() { // from class: m7
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i8 = i7;
                            Unit unit = Unit.a;
                            int i9 = i2;
                            long j2 = j;
                            int i10 = i3;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i8) {
                                case 0:
                                    DefaultTextContextMenuDropdownProvider_androidKt.b(i10, RecomposeScopeImplKt.a(i9 | 1), j2, composer2);
                                    return unit;
                                default:
                                    DefaultTextContextMenuDropdownProvider_androidKt.b(i10, RecomposeScopeImplKt.a(i9 | 1), j2, composer2);
                                    return unit;
                            }
                        }
                    };
                    r.d = function2;
                }
                return;
            }
            Painter a2 = PainterResources_androidKt.a(intValue, gapComposer);
            if ((i4 & 112) != 32) {
                z3 = false;
            }
            Object K2 = gapComposer.K();
            if (z3 || K2 == composer$Companion$Empty$1) {
                if (j == 16) {
                    K2 = null;
                } else {
                    K2 = ColorFilter.Companion.a(j);
                }
                gapComposer.g0(K2);
            }
            BoxKt.a(PainterModifierKt.a(SizeKt.k(Modifier.Companion.b, ContextMenuSpec.e), a2, null, ContentScale.Companion.b, 0.0f, (ColorFilter) K2, 22), gapComposer, 0);
        } else {
            gapComposer.Q();
        }
        r = gapComposer.r();
        if (r != null) {
            final int i8 = 0;
            function2 = new Function2() { // from class: m7
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i82 = i8;
                    Unit unit = Unit.a;
                    int i9 = i2;
                    long j2 = j;
                    int i10 = i;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i82) {
                        case 0:
                            DefaultTextContextMenuDropdownProvider_androidKt.b(i10, RecomposeScopeImplKt.a(i9 | 1), j2, composer2);
                            return unit;
                        default:
                            DefaultTextContextMenuDropdownProvider_androidKt.b(i10, RecomposeScopeImplKt.a(i9 | 1), j2, composer2);
                            return unit;
                    }
                }
            };
            r.d = function2;
        }
    }

    public static final void c(TextContextMenuSession textContextMenuSession, TextContextMenuDataProvider textContextMenuDataProvider, Function0 function0, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        int i3;
        boolean h;
        int i4;
        boolean h2;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2040393164);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h2 = gapComposer.f(textContextMenuSession);
            } else {
                h2 = gapComposer.h(textContextMenuSession);
            }
            if (h2) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if ((i & 64) == 0) {
                h = gapComposer.f(textContextMenuDataProvider);
            } else {
                h = gapComposer.h(textContextMenuDataProvider);
            }
            if (h) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function0)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        boolean z3 = false;
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            if ((i2 & 112) != 32 && ((i2 & 64) == 0 || !gapComposer.f(textContextMenuDataProvider))) {
                z2 = false;
            } else {
                z2 = true;
            }
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z2 || K == composer$Companion$Empty$1) {
                K = new MaintainWindowPositionPopupPositionProvider(new ContextMenuPopupPositionProvider(new p0(10, textContextMenuDataProvider, function0)));
                gapComposer.g0(K);
            }
            MaintainWindowPositionPopupPositionProvider maintainWindowPositionPopupPositionProvider = (MaintainWindowPositionPopupPositionProvider) K;
            if ((i2 & 14) == 4 || ((i2 & 8) != 0 && gapComposer.h(textContextMenuSession))) {
                z3 = true;
            }
            Object K2 = gapComposer.K();
            if (z3 || K2 == composer$Companion$Empty$1) {
                K2 = new r1(13, textContextMenuSession);
                gapComposer.g0(K2);
            }
            AndroidPopup_androidKt.a(maintainWindowPositionPopupPositionProvider, (Function0) K2, a, ComposableLambdaKt.b(1315155414, new c(textContextMenuDataProvider, textContextMenuSession), gapComposer), gapComposer, 3456, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1((Object) textContextMenuSession, (Object) textContextMenuDataProvider, function0, i, 10);
        }
    }

    public static final void d(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1392105195);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            BasicTextContextMenuProviderKt.a(modifier, TextContextMenuProviderKt.a, composableLambdaImpl, gapComposer, ((i2 << 6) & 7168) | (i2 & 14) | 432);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new h2(modifier, composableLambdaImpl, i, 2);
        }
    }
}
