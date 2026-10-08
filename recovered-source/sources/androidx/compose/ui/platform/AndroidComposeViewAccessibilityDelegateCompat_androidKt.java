package androidx.compose.ui.platform;

import android.content.res.Resources;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNode_androidKt;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.k8;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidComposeViewAccessibilityDelegateCompat_androidKt {
    public static final boolean a(SemanticsNode semanticsNode) {
        SemanticsConfiguration k = semanticsNode.k();
        return !k.j.c(SemanticsProperties.j);
    }

    public static final boolean b(SemanticsNode semanticsNode) {
        boolean z;
        Object e = semanticsNode.d.j.e(SemanticsProperties.L);
        Object obj = null;
        if (e == null) {
            e = null;
        }
        ToggleableState toggleableState = (ToggleableState) e;
        MutableScatterMap mutableScatterMap = semanticsNode.d.j;
        Object e2 = mutableScatterMap.e(SemanticsProperties.z);
        if (e2 == null) {
            e2 = null;
        }
        Role role = (Role) e2;
        if (toggleableState != null) {
            z = true;
        } else {
            z = false;
        }
        Object e3 = mutableScatterMap.e(SemanticsProperties.K);
        if (e3 != null) {
            obj = e3;
        }
        if (((Boolean) obj) != null && (role == null || role.a != 4)) {
            return true;
        }
        return z;
    }

    public static final String c(SemanticsNode semanticsNode, Resources resources) {
        float floatValue;
        int d;
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        SemanticsConfiguration semanticsConfiguration2 = semanticsNode.d;
        Object e = semanticsConfiguration.j.e(SemanticsProperties.b);
        String str = null;
        if (e == null) {
            e = null;
        }
        MutableScatterMap mutableScatterMap = semanticsConfiguration2.j;
        Object e2 = mutableScatterMap.e(SemanticsProperties.L);
        if (e2 == null) {
            e2 = null;
        }
        ToggleableState toggleableState = (ToggleableState) e2;
        Object e3 = mutableScatterMap.e(SemanticsProperties.z);
        if (e3 == null) {
            e3 = null;
        }
        Role role = (Role) e3;
        if (toggleableState != null) {
            int ordinal = toggleableState.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        if (e == null) {
                            e = resources.getString(R.string.indeterminate);
                        }
                    } else {
                        k8.e();
                        return null;
                    }
                } else if (role != null && role.a == 2 && e == null) {
                    e = resources.getString(R.string.state_off);
                }
            } else if (role != null && role.a == 2 && e == null) {
                e = resources.getString(R.string.state_on);
            }
        }
        Object e4 = mutableScatterMap.e(SemanticsProperties.K);
        if (e4 == null) {
            e4 = null;
        }
        Boolean bool = (Boolean) e4;
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            if ((role == null || role.a != 4) && e == null) {
                if (booleanValue) {
                    e = resources.getString(R.string.selected);
                } else {
                    e = resources.getString(R.string.not_selected);
                }
            }
        }
        Object e5 = mutableScatterMap.e(SemanticsProperties.c);
        if (e5 == null) {
            e5 = null;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) e5;
        if (progressBarRangeInfo != null) {
            if (progressBarRangeInfo != ProgressBarRangeInfo.c) {
                if (e == null) {
                    ClosedFloatingPointRange closedFloatingPointRange = progressBarRangeInfo.b;
                    if (closedFloatingPointRange.b().floatValue() - closedFloatingPointRange.c().floatValue() == 0.0f) {
                        floatValue = 0.0f;
                    } else {
                        floatValue = (progressBarRangeInfo.a - closedFloatingPointRange.c().floatValue()) / (closedFloatingPointRange.b().floatValue() - closedFloatingPointRange.c().floatValue());
                    }
                    if (floatValue < 0.0f) {
                        floatValue = 0.0f;
                    }
                    if (floatValue > 1.0f) {
                        floatValue = 1.0f;
                    }
                    if (floatValue == 0.0f) {
                        d = 0;
                    } else if (floatValue == 1.0f) {
                        d = 100;
                    } else {
                        d = RangesKt.d(Math.round(floatValue * 100.0f), 1, 99);
                    }
                    e = resources.getString(R.string.template_percent, Integer.valueOf(d));
                }
            } else if (e == null) {
                e = resources.getString(R.string.in_progress);
            }
        }
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.G;
        if (mutableScatterMap.c(semanticsPropertyKey)) {
            MutableScatterMap mutableScatterMap2 = new SemanticsNode(semanticsNode.a, true, semanticsNode.c, semanticsConfiguration2).k().j;
            Object e6 = mutableScatterMap2.e(SemanticsProperties.a);
            if (e6 == null) {
                e6 = null;
            }
            Collection collection = (Collection) e6;
            if (collection == null || collection.isEmpty()) {
                Object e7 = mutableScatterMap2.e(SemanticsProperties.C);
                if (e7 == null) {
                    e7 = null;
                }
                Collection collection2 = (Collection) e7;
                if (collection2 == null || collection2.isEmpty()) {
                    Object e8 = mutableScatterMap2.e(semanticsPropertyKey);
                    if (e8 == null) {
                        e8 = null;
                    }
                    CharSequence charSequence = (CharSequence) e8;
                    if (charSequence == null || charSequence.length() == 0) {
                        str = resources.getString(R.string.state_empty);
                    }
                }
            }
            e = str;
        }
        return (String) e;
    }

    public static final AnnotatedString d(SemanticsNode semanticsNode) {
        Object e = semanticsNode.d.j.e(SemanticsProperties.G);
        AnnotatedString annotatedString = null;
        if (e == null) {
            e = null;
        }
        AnnotatedString annotatedString2 = (AnnotatedString) e;
        Object e2 = semanticsNode.d.j.e(SemanticsProperties.C);
        if (e2 == null) {
            e2 = null;
        }
        List list = (List) e2;
        if (list != null) {
            annotatedString = (AnnotatedString) CollectionsKt.t(list);
        }
        if (annotatedString2 == null) {
            return annotatedString;
        }
        return annotatedString2;
    }

    public static final boolean e(SemanticsNode semanticsNode, Resources resources) {
        if (!SemanticsOwnerKt.e(semanticsNode)) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            if (!semanticsConfiguration.l) {
                Object e = semanticsConfiguration.j.e(SemanticsProperties.a);
                String str = null;
                if (e == null) {
                    e = null;
                }
                List list = (List) e;
                if (list != null) {
                    str = (String) CollectionsKt.t(list);
                }
                if ((str != null || d(semanticsNode) != null || c(semanticsNode, resources) != null || b(semanticsNode)) && f(semanticsNode)) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public static final boolean f(SemanticsNode semanticsNode) {
        boolean z = false;
        if (!semanticsNode.o()) {
            List j = SemanticsNode.j(4, semanticsNode);
            int size = j.size();
            for (int i = 0; i < size; i++) {
                if (SemanticsNode_androidKt.a((SemanticsNode) j.get(i))) {
                }
            }
            LayoutNode w = semanticsNode.c.w();
            while (true) {
                if (w != null) {
                    SemanticsConfiguration y = w.y();
                    if (y != null && y.l) {
                        break;
                    }
                    w = w.w();
                } else {
                    w = null;
                    break;
                }
            }
            if (w != null) {
                z = true;
            }
            return !z;
        }
        return false;
    }
}
