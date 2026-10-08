package androidx.compose.foundation.text.contextmenu.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.TextRange;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposableSingletons$DefaultTextContextMenuDropdownProvider_androidKt {
    public static final ComposableLambdaImpl a;
    public static final ComposableLambdaImpl b;

    static {
        final int i = 0;
        a = new ComposableLambdaImpl(636288403, false, new Function5() { // from class: w5
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function5
            public final Object q(Object obj, Object obj2, Object obj3, Object obj4, Integer num) {
                int i2;
                boolean h;
                boolean h2;
                int i3;
                boolean h3;
                boolean h4;
                int i4 = i;
                boolean z = false;
                int i5 = 128;
                int i6 = 16;
                int i7 = 2;
                Unit unit = Unit.a;
                switch (i4) {
                    case 0:
                        TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                        TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj2;
                        Function0 function0 = (Function0) obj3;
                        Composer composer = (Composer) obj4;
                        int intValue = num.intValue();
                        if ((intValue & 6) == 0) {
                            if ((intValue & 8) == 0) {
                                h2 = ((GapComposer) composer).f(textContextMenuSession);
                            } else {
                                h2 = ((GapComposer) composer).h(textContextMenuSession);
                            }
                            if (h2) {
                                i7 = 4;
                            }
                            i2 = intValue | i7;
                        } else {
                            i2 = intValue;
                        }
                        if ((intValue & 48) == 0) {
                            if ((intValue & 64) == 0) {
                                h = ((GapComposer) composer).f(textContextMenuDataProvider);
                            } else {
                                h = ((GapComposer) composer).h(textContextMenuDataProvider);
                            }
                            if (h) {
                                i6 = 32;
                            }
                            i2 |= i6;
                        }
                        if ((intValue & 384) == 0) {
                            if (((GapComposer) composer).h(function0)) {
                                i5 = 256;
                            }
                            i2 |= i5;
                        }
                        if ((i2 & 1171) != 1170) {
                            z = true;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.N(i2 & 1, z)) {
                            DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession, textContextMenuDataProvider, function0, gapComposer, i2 & 1022);
                        } else {
                            gapComposer.Q();
                        }
                        return unit;
                    case 1:
                        TextContextMenuSession textContextMenuSession2 = (TextContextMenuSession) obj;
                        TextContextMenuDataProvider textContextMenuDataProvider2 = (TextContextMenuDataProvider) obj2;
                        Function0 function02 = (Function0) obj3;
                        Composer composer2 = (Composer) obj4;
                        int intValue2 = num.intValue();
                        if ((intValue2 & 6) == 0) {
                            if ((intValue2 & 8) == 0) {
                                h4 = ((GapComposer) composer2).f(textContextMenuSession2);
                            } else {
                                h4 = ((GapComposer) composer2).h(textContextMenuSession2);
                            }
                            if (h4) {
                                i7 = 4;
                            }
                            i3 = intValue2 | i7;
                        } else {
                            i3 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            if ((intValue2 & 64) == 0) {
                                h3 = ((GapComposer) composer2).f(textContextMenuDataProvider2);
                            } else {
                                h3 = ((GapComposer) composer2).h(textContextMenuDataProvider2);
                            }
                            if (h3) {
                                i6 = 32;
                            }
                            i3 |= i6;
                        }
                        if ((intValue2 & 384) == 0) {
                            if (((GapComposer) composer2).h(function02)) {
                                i5 = 256;
                            }
                            i3 |= i5;
                        }
                        if ((i3 & 1171) != 1170) {
                            z = true;
                        }
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (gapComposer2.N(i3 & 1, z)) {
                            DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession2, textContextMenuDataProvider2, function02, gapComposer2, i3 & 1022);
                        } else {
                            gapComposer2.Q();
                        }
                        return unit;
                    default:
                        boolean booleanValue = ((Boolean) obj3).booleanValue();
                        long j = ((TextRange) num).a;
                        String obj5 = ((CharSequence) obj4).subSequence(TextRange.f(j), TextRange.e(j)).toString();
                        Intent putExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT_READONLY", booleanValue);
                        ActivityInfo activityInfo = ((ResolveInfo) obj2).activityInfo;
                        Intent className = putExtra.setClassName(activityInfo.packageName, activityInfo.name);
                        className.putExtra("android.intent.extra.PROCESS_TEXT", obj5);
                        ((Context) obj).startActivity(className);
                        return unit;
                }
            }
        });
        final int i2 = 1;
        b = new ComposableLambdaImpl(-1357803046, false, new Function5() { // from class: w5
            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function5
            public final Object q(Object obj, Object obj2, Object obj3, Object obj4, Integer num) {
                int i22;
                boolean h;
                boolean h2;
                int i3;
                boolean h3;
                boolean h4;
                int i4 = i2;
                boolean z = false;
                int i5 = 128;
                int i6 = 16;
                int i7 = 2;
                Unit unit = Unit.a;
                switch (i4) {
                    case 0:
                        TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj;
                        TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj2;
                        Function0 function0 = (Function0) obj3;
                        Composer composer = (Composer) obj4;
                        int intValue = num.intValue();
                        if ((intValue & 6) == 0) {
                            if ((intValue & 8) == 0) {
                                h2 = ((GapComposer) composer).f(textContextMenuSession);
                            } else {
                                h2 = ((GapComposer) composer).h(textContextMenuSession);
                            }
                            if (h2) {
                                i7 = 4;
                            }
                            i22 = intValue | i7;
                        } else {
                            i22 = intValue;
                        }
                        if ((intValue & 48) == 0) {
                            if ((intValue & 64) == 0) {
                                h = ((GapComposer) composer).f(textContextMenuDataProvider);
                            } else {
                                h = ((GapComposer) composer).h(textContextMenuDataProvider);
                            }
                            if (h) {
                                i6 = 32;
                            }
                            i22 |= i6;
                        }
                        if ((intValue & 384) == 0) {
                            if (((GapComposer) composer).h(function0)) {
                                i5 = 256;
                            }
                            i22 |= i5;
                        }
                        if ((i22 & 1171) != 1170) {
                            z = true;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.N(i22 & 1, z)) {
                            DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession, textContextMenuDataProvider, function0, gapComposer, i22 & 1022);
                        } else {
                            gapComposer.Q();
                        }
                        return unit;
                    case 1:
                        TextContextMenuSession textContextMenuSession2 = (TextContextMenuSession) obj;
                        TextContextMenuDataProvider textContextMenuDataProvider2 = (TextContextMenuDataProvider) obj2;
                        Function0 function02 = (Function0) obj3;
                        Composer composer2 = (Composer) obj4;
                        int intValue2 = num.intValue();
                        if ((intValue2 & 6) == 0) {
                            if ((intValue2 & 8) == 0) {
                                h4 = ((GapComposer) composer2).f(textContextMenuSession2);
                            } else {
                                h4 = ((GapComposer) composer2).h(textContextMenuSession2);
                            }
                            if (h4) {
                                i7 = 4;
                            }
                            i3 = intValue2 | i7;
                        } else {
                            i3 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            if ((intValue2 & 64) == 0) {
                                h3 = ((GapComposer) composer2).f(textContextMenuDataProvider2);
                            } else {
                                h3 = ((GapComposer) composer2).h(textContextMenuDataProvider2);
                            }
                            if (h3) {
                                i6 = 32;
                            }
                            i3 |= i6;
                        }
                        if ((intValue2 & 384) == 0) {
                            if (((GapComposer) composer2).h(function02)) {
                                i5 = 256;
                            }
                            i3 |= i5;
                        }
                        if ((i3 & 1171) != 1170) {
                            z = true;
                        }
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (gapComposer2.N(i3 & 1, z)) {
                            DefaultTextContextMenuDropdownProvider_androidKt.c(textContextMenuSession2, textContextMenuDataProvider2, function02, gapComposer2, i3 & 1022);
                        } else {
                            gapComposer2.Q();
                        }
                        return unit;
                    default:
                        boolean booleanValue = ((Boolean) obj3).booleanValue();
                        long j = ((TextRange) num).a;
                        String obj5 = ((CharSequence) obj4).subSequence(TextRange.f(j), TextRange.e(j)).toString();
                        Intent putExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT_READONLY", booleanValue);
                        ActivityInfo activityInfo = ((ResolveInfo) obj2).activityInfo;
                        Intent className = putExtra.setClassName(activityInfo.packageName, activityInfo.name);
                        className.putExtra("android.intent.extra.PROCESS_TEXT", obj5);
                        ((Context) obj).startActivity(className);
                        return unit;
                }
            }
        });
    }
}
