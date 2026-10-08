package androidx.compose.ui.platform;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.ClipDescription;
import android.content.res.Resources;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.text.SpannableString;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.ArraySet;
import androidx.collection.IntIntMapKt;
import androidx.collection.IntListKt;
import androidx.collection.IntObjectMap;
import androidx.collection.IntObjectMapKt;
import androidx.collection.IntSetKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.collection.ScatterSetKt;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsSortKt;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.platform.AndroidAccessibilitySpannableString_androidKt;
import androidx.compose.ui.text.platform.URLSpanCache;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import defpackage.f7;
import defpackage.fe;
import defpackage.h;
import defpackage.jb;
import defpackage.k8;
import defpackage.p0;
import defpackage.q;
import defpackage.t0;
import defpackage.u2;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Function;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat extends AccessibilityDelegateCompat implements View.OnAttachStateChangeListener, AccessibilityManager.AccessibilityStateChangeListener, AccessibilityManager.TouchExplorationStateChangeListener {
    public static final MutableIntList W;
    public final SparseArrayCompat A;
    public final SparseArrayCompat B;
    public int C;
    public Integer D;
    public final ArraySet E;
    public final BufferedChannel F;
    public boolean G;
    public PendingTextTraversedEvent H;
    public MutableIntObjectMap I;
    public final MutableIntSet J;
    public final MutableIntIntMap K;
    public final MutableIntIntMap L;
    public final String M;
    public final String N;
    public final URLSpanCache O;
    public final MutableIntObjectMap P;
    public SemanticsNodeCopy Q;
    public boolean R;
    public final MutableIntIntMap S;
    public final defpackage.e T;
    public final ArrayList U;
    public final t0 V;
    public final AndroidComposeView m;
    public int n = Integer.MIN_VALUE;
    public final t0 o = new t0(this, 0);
    public final android.view.accessibility.AccessibilityManager p;
    public long q;
    public List r;
    public final ComposeAccessibilityNodeProvider s;
    public int t;
    public int u;
    public AccessibilityNodeInfoCompat v;
    public AccessibilityNodeInfoCompat w;
    public boolean x;
    public final MutableIntObjectMap y;
    public final MutableIntObjectMap z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api29Impl {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api37Impl {
        public static final void a(SemanticsNode semanticsNode, AccessibilityEvent accessibilityEvent) {
            int i;
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            Object e = semanticsConfiguration.j.e(SemanticsProperties.M);
            Object obj = null;
            if (e == null) {
                e = null;
            }
            if (e == null) {
                Object e2 = semanticsConfiguration.j.e(SemanticsProperties.I);
                if (e2 != null) {
                    obj = e2;
                }
                if (((TextRange) obj) != null) {
                    i = 1;
                } else {
                    i = 0;
                }
                accessibilityEvent.setTextChangeTypes(i | accessibilityEvent.getTextChangeTypes());
                return;
            }
            io.sentry.d.i();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ComposeAccessibilityNodeProvider extends AccessibilityNodeProviderCompat {
        public ComposeAccessibilityNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final void a(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
            MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.W;
            AndroidComposeViewAccessibilityDelegateCompat.this.j(i, accessibilityNodeInfoCompat, str, bundle);
        }

        /* JADX WARN: Code restructure failed: missing block: B:292:0x0597, code lost:
        
            if (kotlin.jvm.internal.Intrinsics.a(r2, r4) == false) goto L1021;
         */
        /* JADX WARN: Code restructure failed: missing block: B:293:0x05db, code lost:
        
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:312:0x05d9, code lost:
        
            if (r2 == false) goto L1021;
         */
        /* JADX WARN: Removed duplicated region for block: B:105:0x026e  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0274  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x02ba  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x02c0  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x02f0  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x02f6  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x0302  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x030a  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x032f  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x0353  */
        /* JADX WARN: Removed duplicated region for block: B:160:0x0366  */
        /* JADX WARN: Removed duplicated region for block: B:163:0x036c  */
        /* JADX WARN: Removed duplicated region for block: B:166:0x038b  */
        /* JADX WARN: Removed duplicated region for block: B:172:0x03b8  */
        /* JADX WARN: Removed duplicated region for block: B:175:0x03cb  */
        /* JADX WARN: Removed duplicated region for block: B:178:0x03d7  */
        /* JADX WARN: Removed duplicated region for block: B:181:0x03dd  */
        /* JADX WARN: Removed duplicated region for block: B:184:0x03ed  */
        /* JADX WARN: Removed duplicated region for block: B:187:0x03f3  */
        /* JADX WARN: Removed duplicated region for block: B:195:0x0411  */
        /* JADX WARN: Removed duplicated region for block: B:200:0x0423 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:205:0x0434  */
        /* JADX WARN: Removed duplicated region for block: B:218:0x0452  */
        /* JADX WARN: Removed duplicated region for block: B:221:0x0458  */
        /* JADX WARN: Removed duplicated region for block: B:226:0x0476  */
        /* JADX WARN: Removed duplicated region for block: B:229:0x047c  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x048e  */
        /* JADX WARN: Removed duplicated region for block: B:265:0x051e  */
        /* JADX WARN: Removed duplicated region for block: B:269:0x052a  */
        /* JADX WARN: Removed duplicated region for block: B:325:0x05f9  */
        /* JADX WARN: Removed duplicated region for block: B:329:0x0605  */
        /* JADX WARN: Removed duplicated region for block: B:334:0x061a  */
        /* JADX WARN: Removed duplicated region for block: B:337:0x0627  */
        /* JADX WARN: Removed duplicated region for block: B:340:0x0646  */
        /* JADX WARN: Removed duplicated region for block: B:343:0x064c  */
        /* JADX WARN: Removed duplicated region for block: B:368:0x06cd  */
        /* JADX WARN: Removed duplicated region for block: B:376:0x06f8  */
        /* JADX WARN: Removed duplicated region for block: B:379:0x06fe  */
        /* JADX WARN: Removed duplicated region for block: B:382:0x0779  */
        /* JADX WARN: Removed duplicated region for block: B:384:0x077d  */
        /* JADX WARN: Removed duplicated region for block: B:441:0x0874  */
        /* JADX WARN: Removed duplicated region for block: B:444:0x0889  */
        /* JADX WARN: Removed duplicated region for block: B:447:0x0893  */
        /* JADX WARN: Removed duplicated region for block: B:482:0x090e  */
        /* JADX WARN: Removed duplicated region for block: B:485:0x0924  */
        /* JADX WARN: Removed duplicated region for block: B:488:0x092d  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x017d  */
        /* JADX WARN: Removed duplicated region for block: B:588:0x0b63  */
        /* JADX WARN: Removed duplicated region for block: B:590:0x070b  */
        /* JADX WARN: Removed duplicated region for block: B:616:0x03c0  */
        /* JADX WARN: Removed duplicated region for block: B:618:0x0371  */
        /* JADX WARN: Removed duplicated region for block: B:622:0x02a0  */
        /* JADX WARN: Removed duplicated region for block: B:625:0x02a6  */
        /* JADX WARN: Removed duplicated region for block: B:627:0x02ad  */
        /* JADX WARN: Removed duplicated region for block: B:631:0x0289  */
        /* JADX WARN: Removed duplicated region for block: B:632:0x021d  */
        /* JADX WARN: Removed duplicated region for block: B:633:0x01fa  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01ec A[EDGE_INSN: B:79:0x01ec->B:80:0x01ec BREAK  A[LOOP:0: B:54:0x0179->B:64:0x01e5], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01f1  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0209  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x022a  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0250  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0256  */
        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final AccessibilityNodeInfoCompat b(int i) {
            Integer num;
            android.view.accessibility.AccessibilityManager accessibilityManager;
            List j;
            int size;
            int i2;
            AccessibilityNodeInfo accessibilityNodeInfo;
            AnnotatedString d;
            SpannableString spannableString;
            SemanticsPropertyKey semanticsPropertyKey;
            Object e;
            ToggleableState toggleableState;
            Object e2;
            Boolean bool;
            int i3;
            Object e3;
            List list;
            String str;
            Object e4;
            String str2;
            Object e5;
            Object e6;
            int i4;
            Object e7;
            Object e8;
            Integer num2;
            int i5;
            boolean z;
            SemanticsNode semanticsNode;
            Object e9;
            Object e10;
            AccessibilityAction accessibilityAction;
            Object e11;
            AccessibilityAction accessibilityAction2;
            Object e12;
            AccessibilityAction accessibilityAction3;
            String t;
            boolean z2;
            ArrayList arrayList;
            CharSequence g;
            boolean z3;
            Object e13;
            ProgressBarRangeInfo progressBarRangeInfo;
            Object e14;
            CollectionInfo collectionInfo;
            int size2;
            int i6;
            Object e15;
            boolean z4;
            Bundle bundle;
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
            AndroidViewHolder b;
            boolean z5;
            boolean z6;
            LayoutNode layoutNode;
            boolean z7;
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat;
            boolean z8;
            AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat2;
            int i7;
            String str3;
            boolean z9;
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            boolean z14;
            boolean z15;
            boolean z16;
            boolean z17;
            boolean z18;
            SemanticsNode semanticsNode2;
            View view;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            android.view.accessibility.AccessibilityManager accessibilityManager2 = androidComposeViewAccessibilityDelegateCompat.p;
            AndroidComposeView androidComposeView = androidComposeViewAccessibilityDelegateCompat.m;
            if (((LifecycleRegistry) androidComposeView.getComposeViewContext().d().g()).i == Lifecycle.State.j) {
                if (!accessibilityManager2.isEnabled()) {
                    accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                }
                accessibilityNodeInfoCompat = null;
            } else {
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(i);
                if (semanticsNodeWithAdjustedBounds == null) {
                    if (!accessibilityManager2.isEnabled()) {
                        accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                    }
                    accessibilityNodeInfoCompat = null;
                } else {
                    SemanticsNode semanticsNode3 = semanticsNodeWithAdjustedBounds.a;
                    SemanticsConfiguration k = semanticsNode3.k();
                    LayoutNode layoutNode2 = semanticsNode3.c;
                    SemanticsConfiguration semanticsConfiguration = semanticsNode3.d;
                    Object e16 = k.j.e(SemanticsProperties.o);
                    if (e16 == null) {
                        e16 = null;
                    }
                    boolean a = Intrinsics.a(e16, Boolean.TRUE);
                    if (!a || AccessibilityManagerCompat.a(accessibilityManager2)) {
                        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
                        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = new AccessibilityNodeInfoCompat(obtain);
                        accessibilityNodeInfoCompat2.h(a);
                        if (i == -1) {
                            Object parentForAccessibility = androidComposeView.getParentForAccessibility();
                            if (parentForAccessibility instanceof View) {
                                view = (View) parentForAccessibility;
                            } else {
                                view = null;
                            }
                            accessibilityNodeInfoCompat2.b = -1;
                            obtain.setParent(view);
                        } else {
                            SemanticsNode l = semanticsNode3.l();
                            if (l != null) {
                                num = Integer.valueOf(l.f);
                            } else {
                                num = null;
                            }
                            if (num != null) {
                                int intValue = num.intValue();
                                if (intValue == androidComposeView.getSemanticsOwner().a().f) {
                                    intValue = -1;
                                }
                                accessibilityNodeInfoCompat2.b = intValue;
                                obtain.setParent(androidComposeView, intValue);
                            } else {
                                InlineClassHelperKt.c("semanticsNode " + i + " has null parent");
                                f7.h();
                                return null;
                            }
                        }
                        accessibilityNodeInfoCompat2.c = i;
                        obtain.setSource(androidComposeView, i);
                        obtain.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.k(semanticsNodeWithAdjustedBounds));
                        MutableIntIntMap mutableIntIntMap = androidComposeViewAccessibilityDelegateCompat.S;
                        SparseArrayCompat sparseArrayCompat = androidComposeViewAccessibilityDelegateCompat.B;
                        Resources resources = androidComposeView.getContext().getResources();
                        accessibilityNodeInfoCompat2.i("android.view.View");
                        MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
                        if (mutableScatterMap.c(SemanticsProperties.G)) {
                            accessibilityNodeInfoCompat2.i("android.widget.EditText");
                        }
                        if (mutableScatterMap.c(SemanticsProperties.C)) {
                            accessibilityNodeInfoCompat2.i("android.widget.TextView");
                        }
                        Object e17 = mutableScatterMap.e(SemanticsProperties.z);
                        if (e17 == null) {
                            e17 = null;
                        }
                        Role role = (Role) e17;
                        if (role != null) {
                            int i8 = role.a;
                            if (semanticsNode3.o() || SemanticsNode.j(4, semanticsNode3).isEmpty()) {
                                accessibilityManager = accessibilityManager2;
                                if (i8 == 4) {
                                    obtain.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", resources.getString(R.string.tab));
                                } else if (i8 == 2) {
                                    obtain.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", resources.getString(R.string.switch_role));
                                } else {
                                    String c = SemanticsUtils_androidKt.c(i8);
                                    if (i8 != 5 || AndroidComposeViewAccessibilityDelegateCompat_androidKt.f(semanticsNode3) || semanticsConfiguration.l) {
                                        accessibilityNodeInfoCompat2.i(c);
                                    }
                                }
                                obtain.setPackageName(androidComposeView.getContext().getPackageName());
                                obtain.setImportantForAccessibility(SemanticsOwnerKt.f(semanticsNode3));
                                boolean a2 = AccessibilityManagerCompat.a(accessibilityManager);
                                j = SemanticsNode.j(4, semanticsNode3);
                                size = j.size();
                                i2 = 0;
                                int i9 = 0;
                                while (true) {
                                    accessibilityNodeInfo = accessibilityNodeInfoCompat2.a;
                                    if (i2 < size) {
                                        break;
                                    }
                                    int i10 = i2;
                                    SemanticsNode semanticsNode4 = (SemanticsNode) j.get(i2);
                                    int i11 = size;
                                    IntObjectMap s = androidComposeViewAccessibilityDelegateCompat.s();
                                    List list2 = j;
                                    int i12 = semanticsNode4.f;
                                    if (s.a(i12)) {
                                        AndroidViewHolder androidViewHolder = androidComposeView.getAndroidViewsHandler$ui().getLayoutNodeToHolder().get(semanticsNode4.c);
                                        if (i12 != -1) {
                                            if (androidViewHolder != null) {
                                                obtain.addChild(androidViewHolder);
                                            } else {
                                                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(i12);
                                                if (semanticsNodeWithAdjustedBounds2 != null && (semanticsNode2 = semanticsNodeWithAdjustedBounds2.a) != null) {
                                                    Object e18 = semanticsNode2.k().j.e(SemanticsProperties.o);
                                                    if (e18 == null) {
                                                        e18 = null;
                                                    }
                                                    z18 = Intrinsics.a(e18, Boolean.TRUE);
                                                } else {
                                                    z18 = false;
                                                }
                                                if (a2 || !z18) {
                                                    accessibilityNodeInfo.addChild(androidComposeView, i12);
                                                }
                                            }
                                            mutableIntIntMap.f(i12, i9);
                                            i9++;
                                        }
                                    }
                                    i2 = i10 + 1;
                                    size = i11;
                                    j = list2;
                                }
                                if (i != androidComposeViewAccessibilityDelegateCompat.t) {
                                    accessibilityNodeInfo.setAccessibilityFocused(true);
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
                                } else {
                                    accessibilityNodeInfo.setAccessibilityFocused(false);
                                    accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f);
                                }
                                d = AndroidComposeViewAccessibilityDelegateCompat_androidKt.d(semanticsNode3);
                                if (d == null) {
                                    androidComposeView.getFontFamilyResolver();
                                    spannableString = (SpannableString) AndroidComposeViewAccessibilityDelegateCompat.P(AndroidAccessibilitySpannableString_androidKt.a(d, androidComposeView.getDensity(), androidComposeViewAccessibilityDelegateCompat.O));
                                } else {
                                    spannableString = null;
                                }
                                accessibilityNodeInfoCompat2.m(spannableString);
                                semanticsPropertyKey = SemanticsProperties.O;
                                if (mutableScatterMap.c(semanticsPropertyKey)) {
                                    obtain.setContentInvalid(true);
                                    Object e19 = mutableScatterMap.e(semanticsPropertyKey);
                                    if (e19 == null) {
                                        e19 = null;
                                    }
                                    accessibilityNodeInfo.setError((CharSequence) e19);
                                }
                                accessibilityNodeInfoCompat2.l(AndroidComposeViewAccessibilityDelegateCompat_androidKt.c(semanticsNode3, resources));
                                accessibilityNodeInfo.setCheckable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.b(semanticsNode3));
                                e = mutableScatterMap.e(SemanticsProperties.L);
                                if (e == null) {
                                    e = null;
                                }
                                toggleableState = (ToggleableState) e;
                                if (toggleableState != null) {
                                    if (toggleableState == ToggleableState.j) {
                                        accessibilityNodeInfo.setChecked(true);
                                    } else if (toggleableState == ToggleableState.k) {
                                        accessibilityNodeInfo.setChecked(false);
                                    }
                                }
                                e2 = mutableScatterMap.e(SemanticsProperties.K);
                                if (e2 == null) {
                                    e2 = null;
                                }
                                bool = (Boolean) e2;
                                if (bool == null) {
                                    boolean booleanValue = bool.booleanValue();
                                    if (role == null) {
                                        i3 = 4;
                                    } else {
                                        i3 = 4;
                                        if (role.a == 4) {
                                            obtain.setSelected(booleanValue);
                                        }
                                    }
                                    accessibilityNodeInfo.setChecked(booleanValue);
                                } else {
                                    i3 = 4;
                                }
                                if (semanticsConfiguration.l || SemanticsNode.j(i3, semanticsNode3).isEmpty()) {
                                    e3 = mutableScatterMap.e(SemanticsProperties.a);
                                    if (e3 == null) {
                                        e3 = null;
                                    }
                                    list = (List) e3;
                                    if (list == null) {
                                        str = (String) CollectionsKt.t(list);
                                    } else {
                                        str = null;
                                    }
                                    accessibilityNodeInfo.setContentDescription(str);
                                }
                                e4 = mutableScatterMap.e(SemanticsProperties.A);
                                if (e4 == null) {
                                    e4 = null;
                                }
                                str2 = (String) e4;
                                if (str2 != null) {
                                    SemanticsNode semanticsNode5 = semanticsNode3;
                                    while (true) {
                                        if (semanticsNode5 != null) {
                                            SemanticsConfiguration semanticsConfiguration2 = semanticsNode5.d;
                                            MutableScatterMap mutableScatterMap2 = semanticsConfiguration2.j;
                                            SemanticsNode semanticsNode6 = semanticsNode5;
                                            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsPropertiesAndroid.a;
                                            if (mutableScatterMap2.c(semanticsPropertyKey2)) {
                                                z17 = ((Boolean) semanticsConfiguration2.c(semanticsPropertyKey2)).booleanValue();
                                                break;
                                            }
                                            semanticsNode5 = semanticsNode6.l();
                                        } else {
                                            z17 = false;
                                            break;
                                        }
                                    }
                                    if (z17) {
                                        obtain.setViewIdResourceName(str2);
                                    }
                                }
                                e5 = mutableScatterMap.e(SemanticsProperties.h);
                                if (e5 == null) {
                                    e5 = null;
                                }
                                if (((Unit) e5) != null) {
                                    accessibilityNodeInfo.setHeading(true);
                                }
                                e6 = mutableScatterMap.e(SemanticsProperties.i);
                                if (e6 == null) {
                                    e6 = null;
                                }
                                if (((Unit) e6) != null) {
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        obtain.setTextEntryKey(true);
                                    } else {
                                        Bundle extras = accessibilityNodeInfo.getExtras();
                                        if (extras != null) {
                                            i4 = 8;
                                            extras.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (-9)) | 8);
                                            if (i != -1) {
                                                int b2 = mutableIntIntMap.b(semanticsNode3.f);
                                                if (b2 != -1) {
                                                    obtain.setDrawingOrder(b2);
                                                } else {
                                                    Log.w("AccessibilityDelegate", "Drawing order is not available, was AccessibilityNodeInfo requested for a child node before its parent?");
                                                }
                                            }
                                            obtain.setPassword(mutableScatterMap.c(SemanticsProperties.N));
                                            e7 = mutableScatterMap.e(SemanticsProperties.Q);
                                            if (e7 == null) {
                                                e7 = null;
                                            }
                                            Boolean bool2 = Boolean.TRUE;
                                            obtain.setEditable(Intrinsics.a(e7, bool2));
                                            e8 = mutableScatterMap.e(SemanticsProperties.R);
                                            if (e8 == null) {
                                                e8 = null;
                                            }
                                            num2 = (Integer) e8;
                                            if (num2 != null) {
                                                i5 = num2.intValue();
                                            } else {
                                                i5 = -1;
                                            }
                                            accessibilityNodeInfo.setMaxTextLength(i5);
                                            accessibilityNodeInfo.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3));
                                            SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.l;
                                            accessibilityNodeInfo.setFocusable(mutableScatterMap.c(semanticsPropertyKey3));
                                            if (obtain.isFocusable()) {
                                                accessibilityNodeInfo.setFocused(((Boolean) semanticsConfiguration.c(semanticsPropertyKey3)).booleanValue());
                                                if (obtain.isFocused()) {
                                                    accessibilityNodeInfoCompat2.a(2);
                                                    androidComposeViewAccessibilityDelegateCompat.u = i;
                                                } else {
                                                    z = true;
                                                    accessibilityNodeInfoCompat2.a(1);
                                                    accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode3) ^ z);
                                                    if (!semanticsNode3.o()) {
                                                        semanticsNode = semanticsNode3.l();
                                                        semanticsNode.getClass();
                                                    } else {
                                                        semanticsNode = semanticsNode3;
                                                    }
                                                    if (semanticsNode.m().f()) {
                                                        accessibilityNodeInfo.setVisibleToUser(false);
                                                    }
                                                    e9 = mutableScatterMap.e(SemanticsProperties.k);
                                                    if (e9 == null) {
                                                        e9 = null;
                                                    }
                                                    if (((LiveRegionMode) e9) != null) {
                                                        obtain.setLiveRegion(1);
                                                    }
                                                    accessibilityNodeInfo.setClickable(false);
                                                    e10 = mutableScatterMap.e(SemanticsActions.b);
                                                    if (e10 == null) {
                                                        e10 = null;
                                                    }
                                                    accessibilityAction = (AccessibilityAction) e10;
                                                    if (accessibilityAction != null) {
                                                        Object e20 = mutableScatterMap.e(SemanticsProperties.K);
                                                        if (e20 == null) {
                                                            e20 = null;
                                                        }
                                                        boolean a3 = Intrinsics.a(e20, bool2);
                                                        if (role == null) {
                                                            z12 = a3;
                                                        } else {
                                                            z12 = a3;
                                                            if (role.a == 4) {
                                                                z13 = true;
                                                                if (!z13) {
                                                                    if (role == null || role.a != 3) {
                                                                        z16 = false;
                                                                    } else {
                                                                        z16 = true;
                                                                    }
                                                                    if (!z16) {
                                                                        z14 = false;
                                                                        if (!z14 && (!z14 || z12)) {
                                                                            z15 = false;
                                                                        } else {
                                                                            z15 = true;
                                                                        }
                                                                        accessibilityNodeInfo.setClickable(z15);
                                                                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3) && obtain.isClickable()) {
                                                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.a));
                                                                        }
                                                                    }
                                                                }
                                                                z14 = true;
                                                                if (!z14) {
                                                                }
                                                                z15 = true;
                                                                accessibilityNodeInfo.setClickable(z15);
                                                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, accessibilityAction.a));
                                                                }
                                                            }
                                                        }
                                                        z13 = false;
                                                        if (!z13) {
                                                        }
                                                        z14 = true;
                                                        if (!z14) {
                                                        }
                                                        z15 = true;
                                                        accessibilityNodeInfo.setClickable(z15);
                                                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                        }
                                                    }
                                                    accessibilityNodeInfo.setLongClickable(false);
                                                    e11 = mutableScatterMap.e(SemanticsActions.c);
                                                    if (e11 == null) {
                                                        e11 = null;
                                                    }
                                                    accessibilityAction2 = (AccessibilityAction) e11;
                                                    if (accessibilityAction2 != null) {
                                                        accessibilityNodeInfo.setLongClickable(true);
                                                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32, accessibilityAction2.a));
                                                        }
                                                    }
                                                    e12 = mutableScatterMap.e(SemanticsActions.q);
                                                    if (e12 == null) {
                                                        e12 = null;
                                                    }
                                                    accessibilityAction3 = (AccessibilityAction) e12;
                                                    if (accessibilityAction3 != null) {
                                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16384, accessibilityAction3.a));
                                                    }
                                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                        Object e21 = mutableScatterMap.e(SemanticsActions.k);
                                                        if (e21 == null) {
                                                            e21 = null;
                                                        }
                                                        AccessibilityAction accessibilityAction4 = (AccessibilityAction) e21;
                                                        if (accessibilityAction4 != null) {
                                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(2097152, accessibilityAction4.a));
                                                        }
                                                        Object e22 = mutableScatterMap.e(SemanticsActions.p);
                                                        if (e22 == null) {
                                                            e22 = null;
                                                        }
                                                        AccessibilityAction accessibilityAction5 = (AccessibilityAction) e22;
                                                        if (accessibilityAction5 != null) {
                                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionImeEnter, accessibilityAction5.a));
                                                        }
                                                        Object e23 = mutableScatterMap.e(SemanticsActions.r);
                                                        if (e23 == null) {
                                                            e23 = null;
                                                        }
                                                        AccessibilityAction accessibilityAction6 = (AccessibilityAction) e23;
                                                        if (accessibilityAction6 != null) {
                                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(65536, accessibilityAction6.a));
                                                        }
                                                        Object e24 = mutableScatterMap.e(SemanticsActions.s);
                                                        if (e24 == null) {
                                                            e24 = null;
                                                        }
                                                        AccessibilityAction accessibilityAction7 = (AccessibilityAction) e24;
                                                        if (accessibilityAction7 != null && obtain.isFocused()) {
                                                            ClipDescription primaryClipDescription = ((AndroidClipboardManager) androidComposeView.getClipboardManager()).a().getPrimaryClipDescription();
                                                            if (primaryClipDescription != null) {
                                                                z11 = primaryClipDescription.hasMimeType("text/*");
                                                            } else {
                                                                z11 = false;
                                                            }
                                                            if (z11) {
                                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(32768, accessibilityAction7.a));
                                                            }
                                                        }
                                                    }
                                                    t = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode3);
                                                    if (t == null && t.length() != 0) {
                                                        z2 = false;
                                                    } else {
                                                        z2 = true;
                                                    }
                                                    if (!z2) {
                                                        obtain.setTextSelection(androidComposeViewAccessibilityDelegateCompat.r(semanticsNode3), androidComposeViewAccessibilityDelegateCompat.q(semanticsNode3));
                                                        Object e25 = mutableScatterMap.e(SemanticsActions.j);
                                                        if (e25 == null) {
                                                            e25 = null;
                                                        }
                                                        AccessibilityAction accessibilityAction8 = (AccessibilityAction) e25;
                                                        if (accessibilityAction8 != null) {
                                                            str3 = accessibilityAction8.a;
                                                        } else {
                                                            str3 = null;
                                                        }
                                                        accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(131072, str3));
                                                        accessibilityNodeInfoCompat2.a(256);
                                                        accessibilityNodeInfoCompat2.a(512);
                                                        accessibilityNodeInfo.setMovementGranularities(11);
                                                        Object e26 = mutableScatterMap.e(SemanticsProperties.a);
                                                        if (e26 == null) {
                                                            e26 = null;
                                                        }
                                                        List list3 = (List) e26;
                                                        if (list3 != null && !list3.isEmpty()) {
                                                            z9 = false;
                                                        } else {
                                                            z9 = true;
                                                        }
                                                        if (z9 && mutableScatterMap.c(SemanticsActions.a)) {
                                                            if (mutableScatterMap.c(SemanticsProperties.G)) {
                                                                Object e27 = mutableScatterMap.e(semanticsPropertyKey3);
                                                                if (e27 == null) {
                                                                    e27 = null;
                                                                }
                                                            }
                                                            LayoutNode w = layoutNode2.w();
                                                            while (true) {
                                                                if (w != null) {
                                                                    SemanticsConfiguration y = w.y();
                                                                    if (y != null && y.l) {
                                                                        if (y.j.c(SemanticsProperties.G)) {
                                                                            break;
                                                                        }
                                                                    }
                                                                    w = w.w();
                                                                } else {
                                                                    w = null;
                                                                    break;
                                                                }
                                                            }
                                                            if (w != null) {
                                                                SemanticsConfiguration y2 = w.y();
                                                                if (y2 != null) {
                                                                    Object e28 = y2.j.e(SemanticsProperties.l);
                                                                    if (e28 == null) {
                                                                        e28 = null;
                                                                    }
                                                                    z10 = Intrinsics.a(e28, Boolean.TRUE);
                                                                } else {
                                                                    z10 = false;
                                                                }
                                                            }
                                                            boolean z19 = false;
                                                            if (!z19) {
                                                                accessibilityNodeInfo.setMovementGranularities(obtain.getMovementGranularities() | 20);
                                                            }
                                                        }
                                                    }
                                                    arrayList = new ArrayList();
                                                    arrayList.add("androidx.compose.ui.semantics.id");
                                                    g = accessibilityNodeInfoCompat2.g();
                                                    if (g == null && g.length() != 0) {
                                                        z3 = false;
                                                    } else {
                                                        z3 = true;
                                                    }
                                                    if (!z3 && mutableScatterMap.c(SemanticsActions.a)) {
                                                        arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
                                                    }
                                                    if (mutableScatterMap.c(SemanticsProperties.A)) {
                                                        arrayList.add("androidx.compose.ui.semantics.testTag");
                                                    }
                                                    if (mutableScatterMap.c(SemanticsProperties.S)) {
                                                        arrayList.add("androidx.compose.ui.semantics.shapeType");
                                                        arrayList.add("androidx.compose.ui.semantics.shapeRect");
                                                        arrayList.add("androidx.compose.ui.semantics.shapeCorners");
                                                        arrayList.add("androidx.compose.ui.semantics.shapeRegion");
                                                    }
                                                    obtain.setAvailableExtraData(arrayList);
                                                    e13 = mutableScatterMap.e(SemanticsProperties.c);
                                                    if (e13 == null) {
                                                        e13 = null;
                                                    }
                                                    progressBarRangeInfo = (ProgressBarRangeInfo) e13;
                                                    if (progressBarRangeInfo != null) {
                                                        float f = progressBarRangeInfo.a;
                                                        ClosedFloatingPointRange closedFloatingPointRange = progressBarRangeInfo.b;
                                                        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsActions.i;
                                                        if (mutableScatterMap.c(semanticsPropertyKey4)) {
                                                            accessibilityNodeInfoCompat2.i("android.widget.SeekBar");
                                                        } else {
                                                            accessibilityNodeInfoCompat2.i("android.widget.ProgressBar");
                                                        }
                                                        if (progressBarRangeInfo != ProgressBarRangeInfo.c) {
                                                            obtain.setRangeInfo(AccessibilityNodeInfo.RangeInfo.obtain(1, closedFloatingPointRange.c().floatValue(), closedFloatingPointRange.b().floatValue(), f));
                                                        }
                                                        if (mutableScatterMap.c(semanticsPropertyKey4) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                            float floatValue = closedFloatingPointRange.b().floatValue();
                                                            float floatValue2 = closedFloatingPointRange.c().floatValue();
                                                            if (floatValue < floatValue2) {
                                                                floatValue = floatValue2;
                                                            }
                                                            if (f < floatValue) {
                                                                accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.h);
                                                            }
                                                            float floatValue3 = closedFloatingPointRange.c().floatValue();
                                                            float floatValue4 = closedFloatingPointRange.b().floatValue();
                                                            if (floatValue3 > floatValue4) {
                                                                floatValue3 = floatValue4;
                                                            }
                                                            if (f > floatValue3) {
                                                                accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.i);
                                                            }
                                                        }
                                                    }
                                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                        Object e29 = semanticsConfiguration.j.e(SemanticsActions.i);
                                                        if (e29 == null) {
                                                            e29 = null;
                                                        }
                                                        AccessibilityAction accessibilityAction9 = (AccessibilityAction) e29;
                                                        if (accessibilityAction9 != null) {
                                                            accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionSetProgress, accessibilityAction9.a));
                                                        }
                                                    }
                                                    e14 = semanticsNode3.k().j.e(SemanticsProperties.f);
                                                    if (e14 == null) {
                                                        e14 = null;
                                                    }
                                                    collectionInfo = (CollectionInfo) e14;
                                                    if (collectionInfo == null) {
                                                        accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(collectionInfo.a, collectionInfo.b, 0));
                                                    } else {
                                                        ArrayList arrayList2 = new ArrayList();
                                                        Object e30 = semanticsNode3.k().j.e(SemanticsProperties.e);
                                                        if (e30 == null) {
                                                            e30 = null;
                                                        }
                                                        if (e30 != null) {
                                                            List j2 = SemanticsNode.j(4, semanticsNode3);
                                                            int size3 = j2.size();
                                                            for (int i13 = 0; i13 < size3; i13++) {
                                                                SemanticsNode semanticsNode7 = (SemanticsNode) j2.get(i13);
                                                                if (semanticsNode7.k().j.c(SemanticsProperties.K)) {
                                                                    arrayList2.add(semanticsNode7);
                                                                }
                                                            }
                                                        }
                                                        if (!arrayList2.isEmpty()) {
                                                            boolean a4 = CollectionInfo_androidKt.a(arrayList2);
                                                            if (a4) {
                                                                size2 = 1;
                                                            } else {
                                                                size2 = arrayList2.size();
                                                            }
                                                            if (a4) {
                                                                i6 = arrayList2.size();
                                                            } else {
                                                                i6 = 1;
                                                            }
                                                            accessibilityNodeInfoCompat2.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(size2, i6, 0));
                                                        }
                                                    }
                                                    e15 = semanticsNode3.k().j.e(SemanticsProperties.g);
                                                    if (e15 == null) {
                                                        e15 = null;
                                                    }
                                                    if (e15 != null) {
                                                        SemanticsNode l2 = semanticsNode3.l();
                                                        if (l2 != null) {
                                                            Object e31 = l2.k().j.e(SemanticsProperties.e);
                                                            if (e31 == null) {
                                                                e31 = null;
                                                            }
                                                            if (e31 != null) {
                                                                Object e32 = l2.k().j.e(SemanticsProperties.f);
                                                                if (e32 == null) {
                                                                    e32 = null;
                                                                }
                                                                CollectionInfo collectionInfo2 = (CollectionInfo) e32;
                                                                if (collectionInfo2 == null || (collectionInfo2.a >= 0 && collectionInfo2.b >= 0)) {
                                                                    if (semanticsNode3.k().j.c(SemanticsProperties.K)) {
                                                                        ArrayList arrayList3 = new ArrayList();
                                                                        List j3 = SemanticsNode.j(4, l2);
                                                                        int size4 = j3.size();
                                                                        int i14 = 0;
                                                                        for (int i15 = 0; i15 < size4; i15++) {
                                                                            SemanticsNode semanticsNode8 = (SemanticsNode) j3.get(i15);
                                                                            if (semanticsNode8.k().j.c(SemanticsProperties.K)) {
                                                                                arrayList3.add(semanticsNode8);
                                                                                if (semanticsNode8.c.x() < layoutNode2.x()) {
                                                                                    i14++;
                                                                                }
                                                                            }
                                                                        }
                                                                        if (!arrayList3.isEmpty()) {
                                                                            boolean a5 = CollectionInfo_androidKt.a(arrayList3);
                                                                            if (a5) {
                                                                                i7 = 0;
                                                                            } else {
                                                                                i7 = i14;
                                                                            }
                                                                            if (!a5) {
                                                                                i14 = 0;
                                                                            }
                                                                            Object e33 = semanticsNode3.k().j.e(SemanticsProperties.K);
                                                                            if (e33 == null) {
                                                                                e33 = Boolean.FALSE;
                                                                            }
                                                                            accessibilityNodeInfoCompat2.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(((Boolean) e33).booleanValue(), i7, 1, i14, 1));
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        Object e34 = semanticsConfiguration.j.e(SemanticsProperties.v);
                                                        if (e34 == null) {
                                                            e34 = null;
                                                        }
                                                        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) e34;
                                                        AccessibilityAction accessibilityAction10 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsConfiguration, SemanticsActions.d);
                                                        if (scrollAxisRange != null && accessibilityAction10 != null) {
                                                            Object e35 = semanticsNode3.k().j.e(SemanticsProperties.f);
                                                            if (e35 == null) {
                                                                e35 = null;
                                                            }
                                                            if (e35 == null) {
                                                                Object e36 = semanticsNode3.k().j.e(SemanticsProperties.e);
                                                                if (e36 == null) {
                                                                    e36 = null;
                                                                }
                                                                if (e36 == null) {
                                                                    z6 = false;
                                                                    if (!z6) {
                                                                        accessibilityNodeInfoCompat2.i("android.widget.HorizontalScrollView");
                                                                    }
                                                                    if (((Number) scrollAxisRange.b.a()).floatValue() > 0.0f) {
                                                                        accessibilityNodeInfo.setScrollable(true);
                                                                    }
                                                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                                        if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange)) {
                                                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.h);
                                                                            layoutNode = layoutNode2;
                                                                            if (layoutNode.I == LayoutDirection.k) {
                                                                                z8 = true;
                                                                            } else {
                                                                                z8 = false;
                                                                            }
                                                                            if (!z8) {
                                                                                accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.p;
                                                                            } else {
                                                                                accessibilityActionCompat2 = AccessibilityNodeInfoCompat.AccessibilityActionCompat.n;
                                                                            }
                                                                            accessibilityNodeInfoCompat2.b(accessibilityActionCompat2);
                                                                        } else {
                                                                            layoutNode = layoutNode2;
                                                                        }
                                                                        if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange)) {
                                                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.i);
                                                                            if (layoutNode.I == LayoutDirection.k) {
                                                                                z7 = true;
                                                                            } else {
                                                                                z7 = false;
                                                                            }
                                                                            if (!z7) {
                                                                                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.n;
                                                                            } else {
                                                                                accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.p;
                                                                            }
                                                                            accessibilityNodeInfoCompat2.b(accessibilityActionCompat);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            z6 = true;
                                                            if (!z6) {
                                                            }
                                                            if (((Number) scrollAxisRange.b.a()).floatValue() > 0.0f) {
                                                            }
                                                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                            }
                                                        }
                                                        ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) SemanticsConfigurationKt.a(semanticsNode3.n(), SemanticsProperties.w);
                                                        if (scrollAxisRange2 != null && accessibilityAction10 != null) {
                                                            Object e37 = semanticsNode3.k().j.e(SemanticsProperties.f);
                                                            if (e37 == null) {
                                                                e37 = null;
                                                            }
                                                            if (e37 == null) {
                                                                Object e38 = semanticsNode3.k().j.e(SemanticsProperties.e);
                                                                if (e38 == null) {
                                                                    e38 = null;
                                                                }
                                                                if (e38 == null) {
                                                                    z5 = false;
                                                                    if (!z5) {
                                                                        accessibilityNodeInfoCompat2.i("android.widget.ScrollView");
                                                                    }
                                                                    z4 = true;
                                                                    if (((Number) scrollAxisRange2.b.a()).floatValue() > 0.0f) {
                                                                        accessibilityNodeInfo.setScrollable(true);
                                                                    }
                                                                    if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                                        if (AndroidComposeViewAccessibilityDelegateCompat.z(scrollAxisRange2)) {
                                                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.h);
                                                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.o);
                                                                        }
                                                                        if (AndroidComposeViewAccessibilityDelegateCompat.y(scrollAxisRange2)) {
                                                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.i);
                                                                            accessibilityNodeInfoCompat2.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.m);
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            z5 = true;
                                                            if (!z5) {
                                                            }
                                                            z4 = true;
                                                            if (((Number) scrollAxisRange2.b.a()).floatValue() > 0.0f) {
                                                            }
                                                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                            }
                                                        } else {
                                                            z4 = true;
                                                        }
                                                        if (Build.VERSION.SDK_INT >= 29) {
                                                            SemanticsConfiguration semanticsConfiguration3 = semanticsNode3.d;
                                                            MutableScatterMap mutableScatterMap3 = semanticsConfiguration3.j;
                                                            Object e39 = semanticsConfiguration3.j.e(SemanticsProperties.z);
                                                            if (e39 == null) {
                                                                e39 = null;
                                                            }
                                                            Role role2 = (Role) e39;
                                                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3) && (role2 == null || role2.a != i4)) {
                                                                Object e40 = mutableScatterMap3.e(SemanticsActions.y);
                                                                if (e40 == null) {
                                                                    e40 = null;
                                                                }
                                                                AccessibilityAction accessibilityAction11 = (AccessibilityAction) e40;
                                                                if (accessibilityAction11 != null) {
                                                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageUp, accessibilityAction11.a));
                                                                }
                                                                Object e41 = mutableScatterMap3.e(SemanticsActions.A);
                                                                if (e41 == null) {
                                                                    e41 = null;
                                                                }
                                                                AccessibilityAction accessibilityAction12 = (AccessibilityAction) e41;
                                                                if (accessibilityAction12 != null) {
                                                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageDown, accessibilityAction12.a));
                                                                }
                                                                Object e42 = mutableScatterMap3.e(SemanticsActions.z);
                                                                if (e42 == null) {
                                                                    e42 = null;
                                                                }
                                                                AccessibilityAction accessibilityAction13 = (AccessibilityAction) e42;
                                                                if (accessibilityAction13 != null) {
                                                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageLeft, accessibilityAction13.a));
                                                                }
                                                                Object e43 = mutableScatterMap3.e(SemanticsActions.B);
                                                                if (e43 == null) {
                                                                    e43 = null;
                                                                }
                                                                AccessibilityAction accessibilityAction14 = (AccessibilityAction) e43;
                                                                if (accessibilityAction14 != null) {
                                                                    accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(android.R.id.accessibilityActionPageRight, accessibilityAction14.a));
                                                                }
                                                            }
                                                        }
                                                        accessibilityNodeInfo.setPaneTitle((CharSequence) SemanticsConfigurationKt.a(semanticsNode3.n(), SemanticsProperties.d));
                                                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                                            AccessibilityAction accessibilityAction15 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode3.n(), SemanticsActions.t);
                                                            if (accessibilityAction15 != null) {
                                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(262144, accessibilityAction15.a));
                                                            }
                                                            AccessibilityAction accessibilityAction16 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode3.n(), SemanticsActions.u);
                                                            if (accessibilityAction16 != null) {
                                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(524288, accessibilityAction16.a));
                                                            }
                                                            AccessibilityAction accessibilityAction17 = (AccessibilityAction) SemanticsConfigurationKt.a(semanticsNode3.n(), SemanticsActions.v);
                                                            if (accessibilityAction17 != null) {
                                                                accessibilityNodeInfoCompat2.b(new AccessibilityNodeInfoCompat.AccessibilityActionCompat(1048576, accessibilityAction17.a));
                                                            }
                                                            SemanticsConfiguration n = semanticsNode3.n();
                                                            SemanticsPropertyKey semanticsPropertyKey5 = SemanticsActions.x;
                                                            if (n.j.c(semanticsPropertyKey5)) {
                                                                List list4 = (List) semanticsNode3.n().c(semanticsPropertyKey5);
                                                                int size5 = list4.size();
                                                                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.W;
                                                                int i16 = mutableIntList.b;
                                                                if (size5 < i16) {
                                                                    SparseArrayCompat sparseArrayCompat2 = new SparseArrayCompat(0);
                                                                    MutableObjectIntMap a6 = ObjectIntMapKt.a();
                                                                    if (sparseArrayCompat.j) {
                                                                        SparseArrayCompatKt.a(sparseArrayCompat);
                                                                    }
                                                                    if (ContainerHelpersKt.a(sparseArrayCompat.m, i, sparseArrayCompat.k) < 0) {
                                                                        z4 = false;
                                                                    }
                                                                    if (z4) {
                                                                        MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) sparseArrayCompat.c(i);
                                                                        MutableIntList mutableIntList2 = new MutableIntList();
                                                                        int[] iArr = mutableIntList.a;
                                                                        int i17 = mutableIntList.b;
                                                                        int i18 = 0;
                                                                        while (i18 < i17) {
                                                                            mutableIntList2.b(iArr[i18]);
                                                                            i18++;
                                                                            mutableObjectIntMap = mutableObjectIntMap;
                                                                        }
                                                                        MutableObjectIntMap mutableObjectIntMap2 = mutableObjectIntMap;
                                                                        ArrayList arrayList4 = new ArrayList();
                                                                        if (list4.size() <= 0) {
                                                                            if (arrayList4.size() > 0) {
                                                                                q.w(arrayList4.get(0));
                                                                                mutableIntList2.a(0);
                                                                                throw null;
                                                                            }
                                                                        } else {
                                                                            q.w(list4.get(0));
                                                                            mutableObjectIntMap2.getClass();
                                                                            throw null;
                                                                        }
                                                                    } else if (list4.size() > 0) {
                                                                        q.w(list4.get(0));
                                                                        mutableIntList.a(0);
                                                                        throw null;
                                                                    }
                                                                    androidComposeViewAccessibilityDelegateCompat.A.e(i, sparseArrayCompat2);
                                                                    sparseArrayCompat.e(i, a6);
                                                                } else {
                                                                    u2.l(jb.d("Can't have more than ", i16, " custom actions for one widget"));
                                                                    return null;
                                                                }
                                                            }
                                                        }
                                                        accessibilityNodeInfo.setScreenReaderFocusable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.e(semanticsNode3, resources));
                                                        int b3 = androidComposeViewAccessibilityDelegateCompat.K.b(i);
                                                        if (b3 != -1) {
                                                            AndroidViewHolder b4 = SemanticsUtils_androidKt.b(androidComposeView.getAndroidViewsHandler$ui(), b3);
                                                            if (b4 != null) {
                                                                accessibilityNodeInfo.setTraversalBefore(b4);
                                                            } else {
                                                                accessibilityNodeInfo.setTraversalBefore(androidComposeView, b3);
                                                            }
                                                            bundle = null;
                                                            androidComposeViewAccessibilityDelegateCompat.j(i, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat.M, null);
                                                        } else {
                                                            bundle = null;
                                                        }
                                                        int b5 = androidComposeViewAccessibilityDelegateCompat.L.b(i);
                                                        if (b5 != -1 && (b = SemanticsUtils_androidKt.b(androidComposeView.getAndroidViewsHandler$ui(), b5)) != null) {
                                                            accessibilityNodeInfo.setTraversalAfter(b);
                                                            androidComposeViewAccessibilityDelegateCompat.j(i, accessibilityNodeInfoCompat2, androidComposeViewAccessibilityDelegateCompat.N, bundle);
                                                        }
                                                        String str4 = (String) SemanticsConfigurationKt.a(semanticsNode3.n(), SemanticsPropertiesAndroid.b);
                                                        if (str4 != null) {
                                                            accessibilityNodeInfoCompat2.i(str4);
                                                        }
                                                        accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                                                    } else {
                                                        io.sentry.d.i();
                                                        return null;
                                                    }
                                                }
                                            }
                                            z = true;
                                            accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode3) ^ z);
                                            if (!semanticsNode3.o()) {
                                            }
                                            if (semanticsNode.m().f()) {
                                            }
                                            e9 = mutableScatterMap.e(SemanticsProperties.k);
                                            if (e9 == null) {
                                            }
                                            if (((LiveRegionMode) e9) != null) {
                                            }
                                            accessibilityNodeInfo.setClickable(false);
                                            e10 = mutableScatterMap.e(SemanticsActions.b);
                                            if (e10 == null) {
                                            }
                                            accessibilityAction = (AccessibilityAction) e10;
                                            if (accessibilityAction != null) {
                                            }
                                            accessibilityNodeInfo.setLongClickable(false);
                                            e11 = mutableScatterMap.e(SemanticsActions.c);
                                            if (e11 == null) {
                                            }
                                            accessibilityAction2 = (AccessibilityAction) e11;
                                            if (accessibilityAction2 != null) {
                                            }
                                            e12 = mutableScatterMap.e(SemanticsActions.q);
                                            if (e12 == null) {
                                            }
                                            accessibilityAction3 = (AccessibilityAction) e12;
                                            if (accessibilityAction3 != null) {
                                            }
                                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                            }
                                            t = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode3);
                                            if (t == null) {
                                            }
                                            z2 = true;
                                            if (!z2) {
                                            }
                                            arrayList = new ArrayList();
                                            arrayList.add("androidx.compose.ui.semantics.id");
                                            g = accessibilityNodeInfoCompat2.g();
                                            if (g == null) {
                                            }
                                            z3 = true;
                                            if (!z3) {
                                                arrayList.add("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY");
                                            }
                                            if (mutableScatterMap.c(SemanticsProperties.A)) {
                                            }
                                            if (mutableScatterMap.c(SemanticsProperties.S)) {
                                            }
                                            obtain.setAvailableExtraData(arrayList);
                                            e13 = mutableScatterMap.e(SemanticsProperties.c);
                                            if (e13 == null) {
                                            }
                                            progressBarRangeInfo = (ProgressBarRangeInfo) e13;
                                            if (progressBarRangeInfo != null) {
                                            }
                                            if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                            }
                                            e14 = semanticsNode3.k().j.e(SemanticsProperties.f);
                                            if (e14 == null) {
                                            }
                                            collectionInfo = (CollectionInfo) e14;
                                            if (collectionInfo == null) {
                                            }
                                            e15 = semanticsNode3.k().j.e(SemanticsProperties.g);
                                            if (e15 == null) {
                                            }
                                            if (e15 != null) {
                                            }
                                        }
                                    }
                                }
                                i4 = 8;
                                if (i != -1) {
                                }
                                obtain.setPassword(mutableScatterMap.c(SemanticsProperties.N));
                                e7 = mutableScatterMap.e(SemanticsProperties.Q);
                                if (e7 == null) {
                                }
                                Boolean bool22 = Boolean.TRUE;
                                obtain.setEditable(Intrinsics.a(e7, bool22));
                                e8 = mutableScatterMap.e(SemanticsProperties.R);
                                if (e8 == null) {
                                }
                                num2 = (Integer) e8;
                                if (num2 != null) {
                                }
                                accessibilityNodeInfo.setMaxTextLength(i5);
                                accessibilityNodeInfo.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3));
                                SemanticsPropertyKey semanticsPropertyKey32 = SemanticsProperties.l;
                                accessibilityNodeInfo.setFocusable(mutableScatterMap.c(semanticsPropertyKey32));
                                if (obtain.isFocusable()) {
                                }
                                z = true;
                                accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode3) ^ z);
                                if (!semanticsNode3.o()) {
                                }
                                if (semanticsNode.m().f()) {
                                }
                                e9 = mutableScatterMap.e(SemanticsProperties.k);
                                if (e9 == null) {
                                }
                                if (((LiveRegionMode) e9) != null) {
                                }
                                accessibilityNodeInfo.setClickable(false);
                                e10 = mutableScatterMap.e(SemanticsActions.b);
                                if (e10 == null) {
                                }
                                accessibilityAction = (AccessibilityAction) e10;
                                if (accessibilityAction != null) {
                                }
                                accessibilityNodeInfo.setLongClickable(false);
                                e11 = mutableScatterMap.e(SemanticsActions.c);
                                if (e11 == null) {
                                }
                                accessibilityAction2 = (AccessibilityAction) e11;
                                if (accessibilityAction2 != null) {
                                }
                                e12 = mutableScatterMap.e(SemanticsActions.q);
                                if (e12 == null) {
                                }
                                accessibilityAction3 = (AccessibilityAction) e12;
                                if (accessibilityAction3 != null) {
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                }
                                t = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode3);
                                if (t == null) {
                                }
                                z2 = true;
                                if (!z2) {
                                }
                                arrayList = new ArrayList();
                                arrayList.add("androidx.compose.ui.semantics.id");
                                g = accessibilityNodeInfoCompat2.g();
                                if (g == null) {
                                }
                                z3 = true;
                                if (!z3) {
                                }
                                if (mutableScatterMap.c(SemanticsProperties.A)) {
                                }
                                if (mutableScatterMap.c(SemanticsProperties.S)) {
                                }
                                obtain.setAvailableExtraData(arrayList);
                                e13 = mutableScatterMap.e(SemanticsProperties.c);
                                if (e13 == null) {
                                }
                                progressBarRangeInfo = (ProgressBarRangeInfo) e13;
                                if (progressBarRangeInfo != null) {
                                }
                                if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                                }
                                e14 = semanticsNode3.k().j.e(SemanticsProperties.f);
                                if (e14 == null) {
                                }
                                collectionInfo = (CollectionInfo) e14;
                                if (collectionInfo == null) {
                                }
                                e15 = semanticsNode3.k().j.e(SemanticsProperties.g);
                                if (e15 == null) {
                                }
                                if (e15 != null) {
                                }
                            }
                        }
                        accessibilityManager = accessibilityManager2;
                        obtain.setPackageName(androidComposeView.getContext().getPackageName());
                        obtain.setImportantForAccessibility(SemanticsOwnerKt.f(semanticsNode3));
                        boolean a22 = AccessibilityManagerCompat.a(accessibilityManager);
                        j = SemanticsNode.j(4, semanticsNode3);
                        size = j.size();
                        i2 = 0;
                        int i92 = 0;
                        while (true) {
                            accessibilityNodeInfo = accessibilityNodeInfoCompat2.a;
                            if (i2 < size) {
                            }
                            i2 = i10 + 1;
                            size = i11;
                            j = list2;
                        }
                        if (i != androidComposeViewAccessibilityDelegateCompat.t) {
                        }
                        d = AndroidComposeViewAccessibilityDelegateCompat_androidKt.d(semanticsNode3);
                        if (d == null) {
                        }
                        accessibilityNodeInfoCompat2.m(spannableString);
                        semanticsPropertyKey = SemanticsProperties.O;
                        if (mutableScatterMap.c(semanticsPropertyKey)) {
                        }
                        accessibilityNodeInfoCompat2.l(AndroidComposeViewAccessibilityDelegateCompat_androidKt.c(semanticsNode3, resources));
                        accessibilityNodeInfo.setCheckable(AndroidComposeViewAccessibilityDelegateCompat_androidKt.b(semanticsNode3));
                        e = mutableScatterMap.e(SemanticsProperties.L);
                        if (e == null) {
                        }
                        toggleableState = (ToggleableState) e;
                        if (toggleableState != null) {
                        }
                        e2 = mutableScatterMap.e(SemanticsProperties.K);
                        if (e2 == null) {
                        }
                        bool = (Boolean) e2;
                        if (bool == null) {
                        }
                        if (semanticsConfiguration.l) {
                        }
                        e3 = mutableScatterMap.e(SemanticsProperties.a);
                        if (e3 == null) {
                        }
                        list = (List) e3;
                        if (list == null) {
                        }
                        accessibilityNodeInfo.setContentDescription(str);
                        e4 = mutableScatterMap.e(SemanticsProperties.A);
                        if (e4 == null) {
                        }
                        str2 = (String) e4;
                        if (str2 != null) {
                        }
                        e5 = mutableScatterMap.e(SemanticsProperties.h);
                        if (e5 == null) {
                        }
                        if (((Unit) e5) != null) {
                        }
                        e6 = mutableScatterMap.e(SemanticsProperties.i);
                        if (e6 == null) {
                        }
                        if (((Unit) e6) != null) {
                        }
                        i4 = 8;
                        if (i != -1) {
                        }
                        obtain.setPassword(mutableScatterMap.c(SemanticsProperties.N));
                        e7 = mutableScatterMap.e(SemanticsProperties.Q);
                        if (e7 == null) {
                        }
                        Boolean bool222 = Boolean.TRUE;
                        obtain.setEditable(Intrinsics.a(e7, bool222));
                        e8 = mutableScatterMap.e(SemanticsProperties.R);
                        if (e8 == null) {
                        }
                        num2 = (Integer) e8;
                        if (num2 != null) {
                        }
                        accessibilityNodeInfo.setMaxTextLength(i5);
                        accessibilityNodeInfo.setEnabled(AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3));
                        SemanticsPropertyKey semanticsPropertyKey322 = SemanticsProperties.l;
                        accessibilityNodeInfo.setFocusable(mutableScatterMap.c(semanticsPropertyKey322));
                        if (obtain.isFocusable()) {
                        }
                        z = true;
                        accessibilityNodeInfo.setVisibleToUser(SemanticsOwnerKt.e(semanticsNode3) ^ z);
                        if (!semanticsNode3.o()) {
                        }
                        if (semanticsNode.m().f()) {
                        }
                        e9 = mutableScatterMap.e(SemanticsProperties.k);
                        if (e9 == null) {
                        }
                        if (((LiveRegionMode) e9) != null) {
                        }
                        accessibilityNodeInfo.setClickable(false);
                        e10 = mutableScatterMap.e(SemanticsActions.b);
                        if (e10 == null) {
                        }
                        accessibilityAction = (AccessibilityAction) e10;
                        if (accessibilityAction != null) {
                        }
                        accessibilityNodeInfo.setLongClickable(false);
                        e11 = mutableScatterMap.e(SemanticsActions.c);
                        if (e11 == null) {
                        }
                        accessibilityAction2 = (AccessibilityAction) e11;
                        if (accessibilityAction2 != null) {
                        }
                        e12 = mutableScatterMap.e(SemanticsActions.q);
                        if (e12 == null) {
                        }
                        accessibilityAction3 = (AccessibilityAction) e12;
                        if (accessibilityAction3 != null) {
                        }
                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                        }
                        t = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode3);
                        if (t == null) {
                        }
                        z2 = true;
                        if (!z2) {
                        }
                        arrayList = new ArrayList();
                        arrayList.add("androidx.compose.ui.semantics.id");
                        g = accessibilityNodeInfoCompat2.g();
                        if (g == null) {
                        }
                        z3 = true;
                        if (!z3) {
                        }
                        if (mutableScatterMap.c(SemanticsProperties.A)) {
                        }
                        if (mutableScatterMap.c(SemanticsProperties.S)) {
                        }
                        obtain.setAvailableExtraData(arrayList);
                        e13 = mutableScatterMap.e(SemanticsProperties.c);
                        if (e13 == null) {
                        }
                        progressBarRangeInfo = (ProgressBarRangeInfo) e13;
                        if (progressBarRangeInfo != null) {
                        }
                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode3)) {
                        }
                        e14 = semanticsNode3.k().j.e(SemanticsProperties.f);
                        if (e14 == null) {
                        }
                        collectionInfo = (CollectionInfo) e14;
                        if (collectionInfo == null) {
                        }
                        e15 = semanticsNode3.k().j.e(SemanticsProperties.g);
                        if (e15 == null) {
                        }
                        if (e15 != null) {
                        }
                    }
                    accessibilityNodeInfoCompat = null;
                }
            }
            if (androidComposeViewAccessibilityDelegateCompat.x) {
                if (i == androidComposeViewAccessibilityDelegateCompat.t) {
                    androidComposeViewAccessibilityDelegateCompat.v = accessibilityNodeInfoCompat;
                }
                if (i == androidComposeViewAccessibilityDelegateCompat.u) {
                    androidComposeViewAccessibilityDelegateCompat.w = accessibilityNodeInfoCompat;
                }
            }
            return accessibilityNodeInfoCompat;
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat c(int i) {
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            if (i != 1) {
                if (i == 2) {
                    return b(androidComposeViewAccessibilityDelegateCompat.t);
                }
                u2.g(q.g(i, "Unknown focus type: "));
                return null;
            }
            int i2 = androidComposeViewAccessibilityDelegateCompat.u;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i2);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:359:0x01a5, code lost:
        
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:515:0x0744, code lost:
        
            if (r0 != 16) goto L1154;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0071. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:314:0x025e  */
        /* JADX WARN: Removed duplicated region for block: B:317:0x0280  */
        /* JADX WARN: Removed duplicated region for block: B:322:0x02a7  */
        /* JADX WARN: Removed duplicated region for block: B:327:0x02cd  */
        /* JADX WARN: Removed duplicated region for block: B:339:0x02cf  */
        /* JADX WARN: Removed duplicated region for block: B:349:0x02b6  */
        /* JADX WARN: Removed duplicated region for block: B:350:0x028f  */
        /* JADX WARN: Removed duplicated region for block: B:351:0x0261  */
        /* JADX WARN: Removed duplicated region for block: B:521:0x080d  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0131  */
        /* JADX WARN: Type inference failed for: r10v4, types: [androidx.compose.ui.platform.AccessibilityIterators$AbstractTextSegmentIterator, androidx.compose.ui.platform.AccessibilityIterators$CharacterTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r10v8, types: [androidx.compose.ui.platform.AccessibilityIterators$WordTextSegmentIterator, androidx.compose.ui.platform.AccessibilityIterators$AbstractTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r7v22, types: [androidx.compose.ui.platform.AccessibilityIterators$AbstractTextSegmentIterator, androidx.compose.ui.platform.AccessibilityIterators$PageTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r7v25, types: [androidx.compose.ui.platform.AccessibilityIterators$AbstractTextSegmentIterator, androidx.compose.ui.platform.AccessibilityIterators$LineTextSegmentIterator] */
        /* JADX WARN: Type inference failed for: r7v28, types: [androidx.compose.ui.platform.AccessibilityIterators$AbstractTextSegmentIterator, androidx.compose.ui.platform.AccessibilityIterators$ParagraphTextSegmentIterator] */
        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean d(int i, int i2, Bundle bundle) {
            SemanticsNode semanticsNode;
            int i3;
            boolean z;
            AccessibilityIterators$AbstractTextSegmentIterator accessibilityIterators$AbstractTextSegmentIterator;
            int[] b;
            int i4;
            int i5;
            int i6;
            int length;
            TextLayoutResult a;
            Object obj;
            Function0 function0;
            int i7;
            Object obj2;
            Function0 function02;
            Object obj3;
            Boolean bool;
            Function0 function03;
            Object obj4;
            Function0 function04;
            Object obj5;
            Function0 function05;
            Object obj6;
            Function0 function06;
            Object obj7;
            Function0 function07;
            Object obj8;
            Function0 function08;
            Object obj9;
            Function0 function09;
            String str;
            Object obj10;
            Function1 function1;
            AccessibilityAction accessibilityAction;
            long j;
            long j2;
            NodeCoordinator d;
            long j3;
            float f;
            float f2;
            float f3;
            float f4;
            long floatToRawIntBits;
            long floatToRawIntBits2;
            Function2 function2;
            Object obj11;
            Function1 function12;
            Object obj12;
            Function0 function010;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            boolean z7;
            boolean z8;
            Float f5;
            float intBitsToFloat;
            Object obj13;
            AccessibilityAction accessibilityAction2;
            Function0 function011;
            Object obj14;
            float intBitsToFloat2;
            Object obj15;
            AccessibilityAction accessibilityAction3;
            Function0 function012;
            Object obj16;
            Function1 function13;
            Object obj17;
            Function0 function013;
            Object obj18;
            Function0 function014;
            Object obj19;
            Function0 function015;
            Object obj20;
            Function0 function016;
            Object obj21;
            AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = AndroidComposeViewAccessibilityDelegateCompat.this;
            android.view.accessibility.AccessibilityManager accessibilityManager = androidComposeViewAccessibilityDelegateCompat.p;
            Float valueOf = Float.valueOf(0.0f);
            AndroidComposeView androidComposeView = androidComposeViewAccessibilityDelegateCompat.m;
            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.s().b(i);
            if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.a) != null) {
                LayoutNode layoutNode = semanticsNode.c;
                int i8 = semanticsNode.f;
                SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
                MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
                Object e = mutableScatterMap.e(SemanticsProperties.o);
                if (e == null) {
                    e = null;
                }
                Boolean bool2 = Boolean.TRUE;
                if (!Intrinsics.a(e, bool2) || AccessibilityManagerCompat.a(accessibilityManager)) {
                    boolean z9 = true;
                    if (i2 != 64) {
                        if (i2 != 128) {
                            int i9 = -1;
                            if (i2 != 256 && i2 != 512) {
                                if (i2 != 16384) {
                                    if (i2 != 131072) {
                                        if (AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode)) {
                                            if (i2 != 1) {
                                                if (i2 != 2) {
                                                    switch (i2) {
                                                        case 16:
                                                            Object e2 = mutableScatterMap.e(SemanticsActions.b);
                                                            if (e2 == null) {
                                                                e2 = null;
                                                            }
                                                            AccessibilityAction accessibilityAction4 = (AccessibilityAction) e2;
                                                            if (accessibilityAction4 != null && (function03 = (Function0) accessibilityAction4.b) != null) {
                                                                bool = (Boolean) function03.a();
                                                            } else {
                                                                bool = null;
                                                            }
                                                            AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i, 1, null, 12);
                                                            if (bool != null) {
                                                                return bool.booleanValue();
                                                            }
                                                            break;
                                                        case 32:
                                                            Object e3 = mutableScatterMap.e(SemanticsActions.c);
                                                            if (e3 == null) {
                                                                obj4 = null;
                                                            } else {
                                                                obj4 = e3;
                                                            }
                                                            AccessibilityAction accessibilityAction5 = (AccessibilityAction) obj4;
                                                            if (accessibilityAction5 != null && (function04 = (Function0) accessibilityAction5.b) != null) {
                                                                return ((Boolean) function04.a()).booleanValue();
                                                            }
                                                            break;
                                                        case 4096:
                                                        case 8192:
                                                            if (i2 == 4096) {
                                                                z2 = true;
                                                            } else {
                                                                z2 = false;
                                                            }
                                                            if (i2 == 8192) {
                                                                z3 = true;
                                                            } else {
                                                                z3 = false;
                                                            }
                                                            if (i2 == 16908345) {
                                                                z4 = true;
                                                            } else {
                                                                z4 = false;
                                                            }
                                                            if (i2 == 16908347) {
                                                                z5 = true;
                                                            } else {
                                                                z5 = false;
                                                            }
                                                            if (i2 == 16908344) {
                                                                z6 = true;
                                                            } else {
                                                                z6 = false;
                                                            }
                                                            if (i2 == 16908346) {
                                                                z7 = true;
                                                            } else {
                                                                z7 = false;
                                                            }
                                                            if (!z4 && !z5 && !z2 && !z3) {
                                                                z8 = false;
                                                            } else {
                                                                z8 = true;
                                                            }
                                                            if (!z6 && !z7 && !z2 && !z3) {
                                                                z9 = false;
                                                            }
                                                            if (z2 || z3) {
                                                                Object e4 = mutableScatterMap.e(SemanticsProperties.c);
                                                                if (e4 == null) {
                                                                    e4 = null;
                                                                }
                                                                ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) e4;
                                                                Object e5 = mutableScatterMap.e(SemanticsActions.i);
                                                                if (e5 == null) {
                                                                    e5 = null;
                                                                }
                                                                AccessibilityAction accessibilityAction6 = (AccessibilityAction) e5;
                                                                if (progressBarRangeInfo != null) {
                                                                    ClosedFloatingPointRange closedFloatingPointRange = progressBarRangeInfo.b;
                                                                    if (accessibilityAction6 != null) {
                                                                        float floatValue = closedFloatingPointRange.b().floatValue();
                                                                        float floatValue2 = closedFloatingPointRange.c().floatValue();
                                                                        if (floatValue < floatValue2) {
                                                                            floatValue = floatValue2;
                                                                        }
                                                                        float floatValue3 = closedFloatingPointRange.c().floatValue();
                                                                        float floatValue4 = closedFloatingPointRange.b().floatValue();
                                                                        if (floatValue3 > floatValue4) {
                                                                            floatValue3 = floatValue4;
                                                                        }
                                                                        float f6 = (floatValue - floatValue3) / 20.0f;
                                                                        if (z3) {
                                                                            f6 = -f6;
                                                                        }
                                                                        Function1 function14 = (Function1) accessibilityAction6.b;
                                                                        if (function14 != null) {
                                                                            return ((Boolean) function14.b(Float.valueOf(progressBarRangeInfo.a + f6))).booleanValue();
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            long c = LayoutCoordinatesKt.a(layoutNode.O.c).c();
                                                            ArrayList arrayList = new ArrayList();
                                                            Object e6 = mutableScatterMap.e(SemanticsActions.C);
                                                            if (e6 == null) {
                                                                e6 = null;
                                                            }
                                                            AccessibilityAction accessibilityAction7 = (AccessibilityAction) e6;
                                                            if (accessibilityAction7 != null && (function13 = (Function1) accessibilityAction7.b) != null && ((Boolean) function13.b(arrayList)).booleanValue()) {
                                                                f5 = (Float) arrayList.get(0);
                                                            } else {
                                                                f5 = null;
                                                            }
                                                            Object e7 = mutableScatterMap.e(SemanticsActions.d);
                                                            if (e7 == null) {
                                                                e7 = null;
                                                            }
                                                            AccessibilityAction accessibilityAction8 = (AccessibilityAction) e7;
                                                            if (accessibilityAction8 != null) {
                                                                Function function = accessibilityAction8.b;
                                                                Object e8 = mutableScatterMap.e(SemanticsProperties.v);
                                                                if (e8 == null) {
                                                                    e8 = null;
                                                                }
                                                                ScrollAxisRange scrollAxisRange = (ScrollAxisRange) e8;
                                                                if (scrollAxisRange != null && z8) {
                                                                    if (f5 != null) {
                                                                        intBitsToFloat2 = f5.floatValue();
                                                                    } else {
                                                                        intBitsToFloat2 = Float.intBitsToFloat((int) (c >> 32));
                                                                    }
                                                                    if (z4 || z3) {
                                                                        intBitsToFloat2 = -intBitsToFloat2;
                                                                    }
                                                                    if (layoutNode.I == LayoutDirection.k && (z4 || z5)) {
                                                                        intBitsToFloat2 = -intBitsToFloat2;
                                                                    }
                                                                    if (AndroidComposeViewAccessibilityDelegateCompat.x(scrollAxisRange, intBitsToFloat2)) {
                                                                        SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.z;
                                                                        if (!mutableScatterMap.c(semanticsPropertyKey) && !mutableScatterMap.c(SemanticsActions.B)) {
                                                                            Function2 function22 = (Function2) function;
                                                                            if (function22 != null) {
                                                                                return ((Boolean) function22.n(Float.valueOf(intBitsToFloat2), valueOf)).booleanValue();
                                                                            }
                                                                        } else {
                                                                            if (intBitsToFloat2 > 0.0f) {
                                                                                Object e9 = mutableScatterMap.e(SemanticsActions.B);
                                                                                if (e9 == null) {
                                                                                    obj16 = null;
                                                                                } else {
                                                                                    obj16 = e9;
                                                                                }
                                                                                accessibilityAction3 = (AccessibilityAction) obj16;
                                                                            } else {
                                                                                Object e10 = mutableScatterMap.e(semanticsPropertyKey);
                                                                                if (e10 == null) {
                                                                                    obj15 = null;
                                                                                } else {
                                                                                    obj15 = e10;
                                                                                }
                                                                                accessibilityAction3 = (AccessibilityAction) obj15;
                                                                            }
                                                                            if (accessibilityAction3 != null && (function012 = (Function0) accessibilityAction3.b) != null) {
                                                                                return ((Boolean) function012.a()).booleanValue();
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                                Object e11 = mutableScatterMap.e(SemanticsProperties.w);
                                                                if (e11 == null) {
                                                                    e11 = null;
                                                                }
                                                                ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) e11;
                                                                if (scrollAxisRange2 != null && z9) {
                                                                    if (f5 != null) {
                                                                        intBitsToFloat = f5.floatValue();
                                                                    } else {
                                                                        intBitsToFloat = Float.intBitsToFloat((int) (c & 4294967295L));
                                                                    }
                                                                    if (z6 || z3) {
                                                                        intBitsToFloat = -intBitsToFloat;
                                                                    }
                                                                    if (AndroidComposeViewAccessibilityDelegateCompat.x(scrollAxisRange2, intBitsToFloat)) {
                                                                        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsActions.y;
                                                                        if (!mutableScatterMap.c(semanticsPropertyKey2) && !mutableScatterMap.c(SemanticsActions.A)) {
                                                                            Function2 function23 = (Function2) function;
                                                                            if (function23 != null) {
                                                                                return ((Boolean) function23.n(valueOf, Float.valueOf(intBitsToFloat))).booleanValue();
                                                                            }
                                                                        } else {
                                                                            if (intBitsToFloat > 0.0f) {
                                                                                Object e12 = mutableScatterMap.e(SemanticsActions.A);
                                                                                if (e12 == null) {
                                                                                    obj14 = null;
                                                                                } else {
                                                                                    obj14 = e12;
                                                                                }
                                                                                accessibilityAction2 = (AccessibilityAction) obj14;
                                                                            } else {
                                                                                Object e13 = mutableScatterMap.e(semanticsPropertyKey2);
                                                                                if (e13 == null) {
                                                                                    obj13 = null;
                                                                                } else {
                                                                                    obj13 = e13;
                                                                                }
                                                                                accessibilityAction2 = (AccessibilityAction) obj13;
                                                                            }
                                                                            if (accessibilityAction2 != null && (function011 = (Function0) accessibilityAction2.b) != null) {
                                                                                return ((Boolean) function011.a()).booleanValue();
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            break;
                                                        case 32768:
                                                            Object e14 = mutableScatterMap.e(SemanticsActions.s);
                                                            if (e14 == null) {
                                                                obj5 = null;
                                                            } else {
                                                                obj5 = e14;
                                                            }
                                                            AccessibilityAction accessibilityAction9 = (AccessibilityAction) obj5;
                                                            if (accessibilityAction9 != null && (function05 = (Function0) accessibilityAction9.b) != null) {
                                                                return ((Boolean) function05.a()).booleanValue();
                                                            }
                                                            break;
                                                        case 65536:
                                                            Object e15 = mutableScatterMap.e(SemanticsActions.r);
                                                            if (e15 == null) {
                                                                obj6 = null;
                                                            } else {
                                                                obj6 = e15;
                                                            }
                                                            AccessibilityAction accessibilityAction10 = (AccessibilityAction) obj6;
                                                            if (accessibilityAction10 != null && (function06 = (Function0) accessibilityAction10.b) != null) {
                                                                return ((Boolean) function06.a()).booleanValue();
                                                            }
                                                            break;
                                                        case 262144:
                                                            Object e16 = mutableScatterMap.e(SemanticsActions.t);
                                                            if (e16 == null) {
                                                                obj7 = null;
                                                            } else {
                                                                obj7 = e16;
                                                            }
                                                            AccessibilityAction accessibilityAction11 = (AccessibilityAction) obj7;
                                                            if (accessibilityAction11 != null && (function07 = (Function0) accessibilityAction11.b) != null) {
                                                                return ((Boolean) function07.a()).booleanValue();
                                                            }
                                                            break;
                                                        case 524288:
                                                            Object e17 = mutableScatterMap.e(SemanticsActions.u);
                                                            if (e17 == null) {
                                                                obj8 = null;
                                                            } else {
                                                                obj8 = e17;
                                                            }
                                                            AccessibilityAction accessibilityAction12 = (AccessibilityAction) obj8;
                                                            if (accessibilityAction12 != null && (function08 = (Function0) accessibilityAction12.b) != null) {
                                                                return ((Boolean) function08.a()).booleanValue();
                                                            }
                                                            break;
                                                        case 1048576:
                                                            Object e18 = mutableScatterMap.e(SemanticsActions.v);
                                                            if (e18 == null) {
                                                                obj9 = null;
                                                            } else {
                                                                obj9 = e18;
                                                            }
                                                            AccessibilityAction accessibilityAction13 = (AccessibilityAction) obj9;
                                                            if (accessibilityAction13 != null && (function09 = (Function0) accessibilityAction13.b) != null) {
                                                                return ((Boolean) function09.a()).booleanValue();
                                                            }
                                                            break;
                                                        case 2097152:
                                                            if (bundle != null) {
                                                                str = bundle.getString("ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE");
                                                            } else {
                                                                str = null;
                                                            }
                                                            Object e19 = mutableScatterMap.e(SemanticsActions.k);
                                                            if (e19 == null) {
                                                                obj10 = null;
                                                            } else {
                                                                obj10 = e19;
                                                            }
                                                            AccessibilityAction accessibilityAction14 = (AccessibilityAction) obj10;
                                                            if (accessibilityAction14 != null && (function1 = (Function1) accessibilityAction14.b) != null) {
                                                                if (str == null) {
                                                                    str = "";
                                                                }
                                                                return ((Boolean) function1.b(new AnnotatedString(str))).booleanValue();
                                                            }
                                                            break;
                                                        case android.R.id.accessibilityActionShowOnScreen:
                                                            SemanticsNode l = semanticsNode.l();
                                                            if (l != null) {
                                                                Object e20 = l.d.j.e(SemanticsActions.d);
                                                                if (e20 == null) {
                                                                    e20 = null;
                                                                }
                                                                accessibilityAction = (AccessibilityAction) e20;
                                                                while (accessibilityAction == null && l != null) {
                                                                    l = l.l();
                                                                    if (l != null) {
                                                                        Object e21 = l.d.j.e(SemanticsActions.d);
                                                                        if (e21 == null) {
                                                                            e21 = null;
                                                                        }
                                                                        accessibilityAction = (AccessibilityAction) e21;
                                                                    }
                                                                }
                                                                if (l == null) {
                                                                    Rect g = semanticsNode.g();
                                                                    return androidComposeView.requestRectangleOnScreen(new android.graphics.Rect((int) Math.floor(g.a), (int) Math.floor(g.b), MathKt.b((float) Math.ceil(g.c)), MathKt.b((float) Math.ceil(g.d))));
                                                                }
                                                                long j4 = 0;
                                                                boolean z10 = false;
                                                                while (l != null) {
                                                                    LayoutNode layoutNode2 = l.c;
                                                                    MutableScatterMap mutableScatterMap2 = l.d.j;
                                                                    Object e22 = mutableScatterMap2.e(SemanticsActions.d);
                                                                    if (e22 == null) {
                                                                        e22 = null;
                                                                    }
                                                                    AccessibilityAction accessibilityAction15 = (AccessibilityAction) e22;
                                                                    if (accessibilityAction15 != null) {
                                                                        Rect a2 = LayoutCoordinatesKt.a(layoutNode2.O.c);
                                                                        LayoutCoordinates L = layoutNode2.O.c.L();
                                                                        if (L != null) {
                                                                            j = ((NodeCoordinator) L).S(0L);
                                                                        } else {
                                                                            j = 0;
                                                                        }
                                                                        Rect i10 = a2.i(j);
                                                                        NodeCoordinator d2 = semanticsNode.d();
                                                                        if (d2 != null) {
                                                                            if (!d2.d1().w) {
                                                                                d2 = null;
                                                                            }
                                                                            if (d2 != null) {
                                                                                j2 = d2.S(0L);
                                                                                long f7 = Offset.f(j2, j4);
                                                                                d = semanticsNode.d();
                                                                                long j5 = j4;
                                                                                if (d == null) {
                                                                                    j3 = d.l;
                                                                                } else {
                                                                                    j3 = 0;
                                                                                }
                                                                                Rect a3 = RectKt.a(f7, IntSizeKt.a(j3));
                                                                                f = a3.a - i10.a;
                                                                                f2 = a3.c - i10.c;
                                                                                if (Math.signum(f) != Math.signum(f2)) {
                                                                                    if (Math.abs(f) >= Math.abs(f2)) {
                                                                                        f = f2;
                                                                                    }
                                                                                } else {
                                                                                    f = 0.0f;
                                                                                }
                                                                                f3 = a3.b - i10.b;
                                                                                f4 = a3.d - i10.d;
                                                                                if (Math.signum(f3) != Math.signum(f4)) {
                                                                                    if (Math.abs(f3) >= Math.abs(f4)) {
                                                                                        f3 = f4;
                                                                                    }
                                                                                } else {
                                                                                    f3 = 0.0f;
                                                                                }
                                                                                floatToRawIntBits = (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L);
                                                                                if (!Offset.c(floatToRawIntBits, 0L)) {
                                                                                    floatToRawIntBits2 = floatToRawIntBits;
                                                                                } else {
                                                                                    float intBitsToFloat3 = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
                                                                                    float intBitsToFloat4 = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
                                                                                    Object e23 = mutableScatterMap2.e(SemanticsProperties.v);
                                                                                    if (e23 == null) {
                                                                                        e23 = null;
                                                                                    }
                                                                                    if (layoutNode.I == LayoutDirection.k) {
                                                                                        intBitsToFloat3 = -intBitsToFloat3;
                                                                                    }
                                                                                    Object e24 = mutableScatterMap2.e(SemanticsProperties.w);
                                                                                    if (e24 == null) {
                                                                                        e24 = null;
                                                                                    }
                                                                                    floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat4) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat3) << 32);
                                                                                }
                                                                                function2 = (Function2) accessibilityAction15.b;
                                                                                if ((function2 == null && ((Boolean) function2.n(Float.valueOf(Float.intBitsToFloat((int) (floatToRawIntBits2 >> 32))), Float.valueOf(Float.intBitsToFloat((int) (floatToRawIntBits2 & 4294967295L))))).booleanValue()) || z10) {
                                                                                    z10 = true;
                                                                                } else {
                                                                                    z10 = false;
                                                                                }
                                                                                j4 = Offset.e(j5, floatToRawIntBits);
                                                                            }
                                                                        }
                                                                        j2 = 0;
                                                                        long f72 = Offset.f(j2, j4);
                                                                        d = semanticsNode.d();
                                                                        long j52 = j4;
                                                                        if (d == null) {
                                                                        }
                                                                        Rect a32 = RectKt.a(f72, IntSizeKt.a(j3));
                                                                        f = a32.a - i10.a;
                                                                        f2 = a32.c - i10.c;
                                                                        if (Math.signum(f) != Math.signum(f2)) {
                                                                        }
                                                                        f3 = a32.b - i10.b;
                                                                        f4 = a32.d - i10.d;
                                                                        if (Math.signum(f3) != Math.signum(f4)) {
                                                                        }
                                                                        floatToRawIntBits = (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L);
                                                                        if (!Offset.c(floatToRawIntBits, 0L)) {
                                                                        }
                                                                        function2 = (Function2) accessibilityAction15.b;
                                                                        if (function2 == null) {
                                                                        }
                                                                        z10 = false;
                                                                        j4 = Offset.e(j52, floatToRawIntBits);
                                                                    } else {
                                                                        j4 = j4;
                                                                    }
                                                                    l = l.l();
                                                                }
                                                                return z10;
                                                            }
                                                            accessibilityAction = null;
                                                            break;
                                                        case android.R.id.accessibilityActionSetProgress:
                                                            if (bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                                                                Object e25 = mutableScatterMap.e(SemanticsActions.i);
                                                                if (e25 == null) {
                                                                    obj11 = null;
                                                                } else {
                                                                    obj11 = e25;
                                                                }
                                                                AccessibilityAction accessibilityAction16 = (AccessibilityAction) obj11;
                                                                if (accessibilityAction16 != null && (function12 = (Function1) accessibilityAction16.b) != null) {
                                                                    return ((Boolean) function12.b(Float.valueOf(bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")))).booleanValue();
                                                                }
                                                            }
                                                            break;
                                                        case android.R.id.accessibilityActionImeEnter:
                                                            Object e26 = mutableScatterMap.e(SemanticsActions.p);
                                                            if (e26 == null) {
                                                                obj12 = null;
                                                            } else {
                                                                obj12 = e26;
                                                            }
                                                            AccessibilityAction accessibilityAction17 = (AccessibilityAction) obj12;
                                                            if (accessibilityAction17 != null && (function010 = (Function0) accessibilityAction17.b) != null) {
                                                                return ((Boolean) function010.a()).booleanValue();
                                                            }
                                                            break;
                                                        default:
                                                            switch (i2) {
                                                                case android.R.id.accessibilityActionScrollUp:
                                                                case android.R.id.accessibilityActionScrollLeft:
                                                                case android.R.id.accessibilityActionScrollDown:
                                                                case android.R.id.accessibilityActionScrollRight:
                                                                    break;
                                                                default:
                                                                    switch (i2) {
                                                                        case android.R.id.accessibilityActionPageUp:
                                                                            Object e27 = mutableScatterMap.e(SemanticsActions.y);
                                                                            if (e27 == null) {
                                                                                obj17 = null;
                                                                            } else {
                                                                                obj17 = e27;
                                                                            }
                                                                            AccessibilityAction accessibilityAction18 = (AccessibilityAction) obj17;
                                                                            if (accessibilityAction18 != null && (function013 = (Function0) accessibilityAction18.b) != null) {
                                                                                return ((Boolean) function013.a()).booleanValue();
                                                                            }
                                                                            break;
                                                                        case android.R.id.accessibilityActionPageDown:
                                                                            Object e28 = mutableScatterMap.e(SemanticsActions.A);
                                                                            if (e28 == null) {
                                                                                obj18 = null;
                                                                            } else {
                                                                                obj18 = e28;
                                                                            }
                                                                            AccessibilityAction accessibilityAction19 = (AccessibilityAction) obj18;
                                                                            if (accessibilityAction19 != null && (function014 = (Function0) accessibilityAction19.b) != null) {
                                                                                return ((Boolean) function014.a()).booleanValue();
                                                                            }
                                                                            break;
                                                                        case android.R.id.accessibilityActionPageLeft:
                                                                            Object e29 = mutableScatterMap.e(SemanticsActions.z);
                                                                            if (e29 == null) {
                                                                                obj19 = null;
                                                                            } else {
                                                                                obj19 = e29;
                                                                            }
                                                                            AccessibilityAction accessibilityAction20 = (AccessibilityAction) obj19;
                                                                            if (accessibilityAction20 != null && (function015 = (Function0) accessibilityAction20.b) != null) {
                                                                                return ((Boolean) function015.a()).booleanValue();
                                                                            }
                                                                            break;
                                                                        case android.R.id.accessibilityActionPageRight:
                                                                            Object e30 = mutableScatterMap.e(SemanticsActions.B);
                                                                            if (e30 == null) {
                                                                                obj20 = null;
                                                                            } else {
                                                                                obj20 = e30;
                                                                            }
                                                                            AccessibilityAction accessibilityAction21 = (AccessibilityAction) obj20;
                                                                            if (accessibilityAction21 != null && (function016 = (Function0) accessibilityAction21.b) != null) {
                                                                                return ((Boolean) function016.a()).booleanValue();
                                                                            }
                                                                            break;
                                                                        default:
                                                                            SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) androidComposeViewAccessibilityDelegateCompat.A.c(i);
                                                                            if (sparseArrayCompat != null && ((CharSequence) sparseArrayCompat.c(i2)) != null) {
                                                                                Object e31 = mutableScatterMap.e(SemanticsActions.x);
                                                                                if (e31 == null) {
                                                                                    obj21 = null;
                                                                                } else {
                                                                                    obj21 = e31;
                                                                                }
                                                                                List list = (List) obj21;
                                                                                if (list != null && list.size() > 0) {
                                                                                    list.get(0).getClass();
                                                                                    io.sentry.d.i();
                                                                                    return false;
                                                                                }
                                                                            }
                                                                            break;
                                                                    }
                                                            }
                                                    }
                                                } else {
                                                    Object e32 = mutableScatterMap.e(SemanticsProperties.l);
                                                    if (e32 == null) {
                                                        obj3 = null;
                                                    } else {
                                                        obj3 = e32;
                                                    }
                                                    if (Intrinsics.a(obj3, bool2)) {
                                                        ((FocusOwnerImpl) androidComposeView.getFocusOwner()).c(8, false, true);
                                                        return true;
                                                    }
                                                }
                                            } else {
                                                if (androidComposeView.isInTouchMode()) {
                                                    androidComposeView.requestFocusFromTouch();
                                                }
                                                Object e33 = mutableScatterMap.e(SemanticsActions.w);
                                                if (e33 == null) {
                                                    obj2 = null;
                                                } else {
                                                    obj2 = e33;
                                                }
                                                AccessibilityAction accessibilityAction22 = (AccessibilityAction) obj2;
                                                if (accessibilityAction22 != null && (function02 = (Function0) accessibilityAction22.b) != null) {
                                                    return ((Boolean) function02.a()).booleanValue();
                                                }
                                            }
                                        }
                                    } else {
                                        if (bundle != null) {
                                            i7 = bundle.getInt("ACTION_ARGUMENT_SELECTION_START_INT", -1);
                                        } else {
                                            i7 = -1;
                                        }
                                        if (bundle != null) {
                                            i9 = bundle.getInt("ACTION_ARGUMENT_SELECTION_END_INT", -1);
                                        }
                                        boolean K = androidComposeViewAccessibilityDelegateCompat.K(semanticsNode, i7, i9, false);
                                        if (K) {
                                            AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i8), 0, null, 12);
                                        }
                                        return K;
                                    }
                                } else {
                                    Object e34 = mutableScatterMap.e(SemanticsActions.q);
                                    if (e34 == null) {
                                        obj = null;
                                    } else {
                                        obj = e34;
                                    }
                                    AccessibilityAction accessibilityAction23 = (AccessibilityAction) obj;
                                    if (accessibilityAction23 != null && (function0 = (Function0) accessibilityAction23.b) != null) {
                                        return ((Boolean) function0.a()).booleanValue();
                                    }
                                }
                            } else if (bundle != null) {
                                int i11 = bundle.getInt("ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT");
                                boolean z11 = bundle.getBoolean("ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN");
                                if (i2 == 256) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                Integer num = androidComposeViewAccessibilityDelegateCompat.D;
                                if (num == null || i8 != num.intValue()) {
                                    androidComposeViewAccessibilityDelegateCompat.C = -1;
                                    androidComposeViewAccessibilityDelegateCompat.D = Integer.valueOf(i8);
                                }
                                String t = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode);
                                if (t != null && t.length() != 0) {
                                    String t2 = AndroidComposeViewAccessibilityDelegateCompat.t(semanticsNode);
                                    if (t2 != null && t2.length() != 0) {
                                        if (i11 != 1) {
                                            if (i11 != 2) {
                                                if (i11 != 4) {
                                                    if (i11 == 8) {
                                                        if (AccessibilityIterators$ParagraphTextSegmentIterator.c == null) {
                                                            AccessibilityIterators$ParagraphTextSegmentIterator.c = new AccessibilityIterators$AbstractTextSegmentIterator();
                                                        }
                                                        AccessibilityIterators$AbstractTextSegmentIterator accessibilityIterators$AbstractTextSegmentIterator2 = AccessibilityIterators$ParagraphTextSegmentIterator.c;
                                                        accessibilityIterators$AbstractTextSegmentIterator2.getClass();
                                                        accessibilityIterators$AbstractTextSegmentIterator2.a = t2;
                                                        accessibilityIterators$AbstractTextSegmentIterator = accessibilityIterators$AbstractTextSegmentIterator2;
                                                    }
                                                }
                                                if (mutableScatterMap.c(SemanticsActions.a) && (a = SemanticsUtils_androidKt.a(semanticsConfiguration)) != null) {
                                                    if (i11 == 4) {
                                                        if (AccessibilityIterators$LineTextSegmentIterator.d == null) {
                                                            AccessibilityIterators$LineTextSegmentIterator.d = new AccessibilityIterators$AbstractTextSegmentIterator();
                                                        }
                                                        AccessibilityIterators$LineTextSegmentIterator accessibilityIterators$LineTextSegmentIterator = AccessibilityIterators$LineTextSegmentIterator.d;
                                                        accessibilityIterators$LineTextSegmentIterator.getClass();
                                                        accessibilityIterators$LineTextSegmentIterator.a = t2;
                                                        accessibilityIterators$LineTextSegmentIterator.c = a;
                                                        accessibilityIterators$AbstractTextSegmentIterator = accessibilityIterators$LineTextSegmentIterator;
                                                    } else {
                                                        if (AccessibilityIterators$PageTextSegmentIterator.e == null) {
                                                            ?? accessibilityIterators$AbstractTextSegmentIterator3 = new AccessibilityIterators$AbstractTextSegmentIterator();
                                                            new android.graphics.Rect();
                                                            AccessibilityIterators$PageTextSegmentIterator.e = accessibilityIterators$AbstractTextSegmentIterator3;
                                                        }
                                                        AccessibilityIterators$PageTextSegmentIterator accessibilityIterators$PageTextSegmentIterator = AccessibilityIterators$PageTextSegmentIterator.e;
                                                        accessibilityIterators$PageTextSegmentIterator.getClass();
                                                        accessibilityIterators$PageTextSegmentIterator.a = t2;
                                                        accessibilityIterators$PageTextSegmentIterator.c = a;
                                                        accessibilityIterators$PageTextSegmentIterator.d = semanticsNode;
                                                        accessibilityIterators$AbstractTextSegmentIterator = accessibilityIterators$PageTextSegmentIterator;
                                                    }
                                                }
                                            } else {
                                                Locale locale = androidComposeView.getContext().getResources().getConfiguration().locale;
                                                if (AccessibilityIterators$WordTextSegmentIterator.d == null) {
                                                    ?? accessibilityIterators$AbstractTextSegmentIterator4 = new AccessibilityIterators$AbstractTextSegmentIterator();
                                                    accessibilityIterators$AbstractTextSegmentIterator4.c = BreakIterator.getWordInstance(locale);
                                                    AccessibilityIterators$WordTextSegmentIterator.d = accessibilityIterators$AbstractTextSegmentIterator4;
                                                }
                                                AccessibilityIterators$WordTextSegmentIterator accessibilityIterators$WordTextSegmentIterator = AccessibilityIterators$WordTextSegmentIterator.d;
                                                accessibilityIterators$WordTextSegmentIterator.getClass();
                                                accessibilityIterators$WordTextSegmentIterator.a = t2;
                                                BreakIterator breakIterator = accessibilityIterators$WordTextSegmentIterator.c;
                                                if (breakIterator != null) {
                                                    breakIterator.setText(t2);
                                                    accessibilityIterators$AbstractTextSegmentIterator = accessibilityIterators$WordTextSegmentIterator;
                                                } else {
                                                    Intrinsics.e("impl");
                                                    throw null;
                                                }
                                            }
                                        } else {
                                            Locale locale2 = androidComposeView.getContext().getResources().getConfiguration().locale;
                                            if (AccessibilityIterators$CharacterTextSegmentIterator.d == null) {
                                                ?? accessibilityIterators$AbstractTextSegmentIterator5 = new AccessibilityIterators$AbstractTextSegmentIterator();
                                                accessibilityIterators$AbstractTextSegmentIterator5.c = BreakIterator.getCharacterInstance(locale2);
                                                AccessibilityIterators$CharacterTextSegmentIterator.d = accessibilityIterators$AbstractTextSegmentIterator5;
                                            }
                                            AccessibilityIterators$CharacterTextSegmentIterator accessibilityIterators$CharacterTextSegmentIterator = AccessibilityIterators$CharacterTextSegmentIterator.d;
                                            accessibilityIterators$CharacterTextSegmentIterator.getClass();
                                            accessibilityIterators$CharacterTextSegmentIterator.a = t2;
                                            BreakIterator breakIterator2 = accessibilityIterators$CharacterTextSegmentIterator.c;
                                            if (breakIterator2 != null) {
                                                breakIterator2.setText(t2);
                                                accessibilityIterators$AbstractTextSegmentIterator = accessibilityIterators$CharacterTextSegmentIterator;
                                            } else {
                                                Intrinsics.e("impl");
                                                throw null;
                                            }
                                        }
                                        if (accessibilityIterators$AbstractTextSegmentIterator != null) {
                                            int q = androidComposeViewAccessibilityDelegateCompat.q(semanticsNode);
                                            if (q == -1) {
                                                if (z) {
                                                    length = 0;
                                                } else {
                                                    length = t.length();
                                                }
                                                q = length;
                                            }
                                            if (z) {
                                                b = accessibilityIterators$AbstractTextSegmentIterator.a(q);
                                            } else {
                                                b = accessibilityIterators$AbstractTextSegmentIterator.b(q);
                                            }
                                            if (b != null) {
                                                int i12 = b[0];
                                                int i13 = b[1];
                                                if (z11 && !mutableScatterMap.c(SemanticsProperties.a) && mutableScatterMap.c(SemanticsProperties.G)) {
                                                    i4 = androidComposeViewAccessibilityDelegateCompat.r(semanticsNode);
                                                    if (i4 == -1) {
                                                        if (z) {
                                                            i4 = i12;
                                                        } else {
                                                            i4 = i13;
                                                        }
                                                    }
                                                    if (z) {
                                                        i5 = i13;
                                                    } else {
                                                        i5 = i12;
                                                    }
                                                } else {
                                                    if (z) {
                                                        i4 = i13;
                                                    } else {
                                                        i4 = i12;
                                                    }
                                                    i5 = i4;
                                                }
                                                if (z) {
                                                    i6 = 256;
                                                } else {
                                                    i6 = 512;
                                                }
                                                androidComposeViewAccessibilityDelegateCompat.H = new PendingTextTraversedEvent(semanticsNode, i6, i11, i12, i13, SystemClock.uptimeMillis());
                                                androidComposeViewAccessibilityDelegateCompat.K(semanticsNode, i4, i5, true);
                                                return true;
                                            }
                                        }
                                    }
                                    accessibilityIterators$AbstractTextSegmentIterator = null;
                                    if (accessibilityIterators$AbstractTextSegmentIterator != null) {
                                    }
                                }
                            }
                        } else {
                            if (androidComposeViewAccessibilityDelegateCompat.t == i) {
                                androidComposeViewAccessibilityDelegateCompat.t = Integer.MIN_VALUE;
                                androidComposeViewAccessibilityDelegateCompat.v = null;
                                androidComposeView.invalidate();
                                AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i, 65536, null, 12);
                                return true;
                            }
                            return false;
                        }
                    } else {
                        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = androidComposeViewAccessibilityDelegateCompat.t) == i) {
                            return false;
                        }
                        if (i3 != Integer.MIN_VALUE) {
                            AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i3, 65536, null, 12);
                        }
                        androidComposeViewAccessibilityDelegateCompat.t = i;
                        androidComposeView.invalidate();
                        AndroidComposeViewAccessibilityDelegateCompat.E(androidComposeViewAccessibilityDelegateCompat, i, 32768, null, 12);
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PendingTextTraversedEvent {
        public final SemanticsNode a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final long f;

        public PendingTextTraversedEvent(SemanticsNode semanticsNode, int i, int i2, int i3, int i4, long j) {
            this.a = semanticsNode;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = j;
        }
    }

    static {
        int[] iArr = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        MutableIntList mutableIntList = IntListKt.a;
        MutableIntList mutableIntList2 = new MutableIntList(32);
        int i = mutableIntList2.b;
        if (i >= 0) {
            int i2 = i + 32;
            mutableIntList2.c(i2);
            int[] iArr2 = mutableIntList2.a;
            int i3 = mutableIntList2.b;
            if (i != i3) {
                ArraysKt.f(i2, i, i3, iArr2, iArr2);
            }
            ArraysKt.i(i, 0, 12, iArr, iArr2);
            mutableIntList2.b += 32;
            W = mutableIntList2;
            return;
        }
        u2.o("");
    }

    public AndroidComposeViewAccessibilityDelegateCompat(AndroidComposeView androidComposeView) {
        this.m = androidComposeView;
        Object systemService = androidComposeView.getContext().getSystemService("accessibility");
        systemService.getClass();
        this.p = (android.view.accessibility.AccessibilityManager) systemService;
        this.q = 100L;
        new Handler(Looper.getMainLooper());
        this.s = new ComposeAccessibilityNodeProvider();
        this.t = Integer.MIN_VALUE;
        this.u = Integer.MIN_VALUE;
        this.y = new MutableIntObjectMap();
        this.z = new MutableIntObjectMap();
        this.A = new SparseArrayCompat(0);
        this.B = new SparseArrayCompat(0);
        this.C = -1;
        this.E = new ArraySet(0);
        this.F = ChannelKt.a(1, 6, null);
        this.G = true;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        mutableIntObjectMap.getClass();
        this.I = mutableIntObjectMap;
        this.J = new MutableIntSet();
        this.K = new MutableIntIntMap();
        this.L = new MutableIntIntMap();
        this.M = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALBEFORE_VAL";
        this.N = "android.view.accessibility.extra.EXTRA_DATA_TEST_TRAVERSALAFTER_VAL";
        this.O = new URLSpanCache();
        this.P = new MutableIntObjectMap();
        this.Q = new SemanticsNodeCopy(androidComposeView.getSemanticsOwner().a(), mutableIntObjectMap);
        int i = IntIntMapKt.a;
        this.S = new MutableIntIntMap();
        androidComposeView.addOnAttachStateChangeListener(this);
        this.T = new defpackage.e(1, this);
        this.U = new ArrayList();
        this.V = new t0(this, 1);
    }

    public static /* synthetic */ void E(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat, int i, int i2, Integer num, int i3) {
        if ((i3 & 4) != 0) {
            num = null;
        }
        androidComposeViewAccessibilityDelegateCompat.D(i, i2, num, null);
    }

    public static android.graphics.Rect L(Outline outline, float f, float f2) {
        if (!(outline instanceof Outline.Rectangle) && !(outline instanceof Outline.Rounded)) {
            return null;
        }
        Rect a = outline.a();
        return new android.graphics.Rect((int) (a.a + f), (int) (a.b + f2), (int) (a.c + f), (int) (a.d + f2));
    }

    public static float[] N(Outline outline) {
        if (outline instanceof Outline.Rounded) {
            RoundRect roundRect = ((Outline.Rounded) outline).a;
            long j = roundRect.h;
            long j2 = roundRect.g;
            long j3 = roundRect.f;
            long j4 = roundRect.e;
            return new float[]{Float.intBitsToFloat((int) (j4 >> 32)), Float.intBitsToFloat((int) (j4 & 4294967295L)), Float.intBitsToFloat((int) (j3 >> 32)), Float.intBitsToFloat((int) (j3 & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L))};
        }
        return null;
    }

    public static Region O(Outline outline, float f, float f2) {
        if (outline instanceof Outline.Generic) {
            Outline.Generic generic = (Outline.Generic) outline;
            Rect h = generic.a().h(f, f2);
            Region region = new Region(new android.graphics.Rect((int) (h.a + 0.0f), (int) (h.b + 0.0f), (int) (h.c + 0.0f), (int) (h.d + 0.0f)));
            Region region2 = new Region();
            Path path = generic.a;
            if (path instanceof AndroidPath) {
                android.graphics.Path path2 = ((AndroidPath) path).a;
                path2.offset(f, f2);
                region2.setPath(path2, region);
                return region2;
            }
            fe.t("Unable to obtain android.graphics.Path");
        }
        return null;
    }

    public static CharSequence P(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            int i = 100000;
            if (charSequence.length() > 100000) {
                if (Character.isHighSurrogate(charSequence.charAt(99999)) && Character.isLowSurrogate(charSequence.charAt(100000))) {
                    i = 99999;
                }
                CharSequence subSequence = charSequence.subSequence(0, i);
                subSequence.getClass();
                return subSequence;
            }
        }
        return charSequence;
    }

    public static String t(SemanticsNode semanticsNode) {
        AnnotatedString annotatedString;
        if (semanticsNode != null) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.a;
            if (mutableScatterMap.c(semanticsPropertyKey)) {
                return ListUtilsKt.a((List) semanticsConfiguration.c(semanticsPropertyKey), ",", null, 62);
            }
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.G;
            if (mutableScatterMap.c(semanticsPropertyKey2)) {
                Object e = mutableScatterMap.e(semanticsPropertyKey2);
                if (e == null) {
                    e = null;
                }
                AnnotatedString annotatedString2 = (AnnotatedString) e;
                if (annotatedString2 != null) {
                    return annotatedString2.k;
                }
            } else {
                Object e2 = mutableScatterMap.e(SemanticsProperties.C);
                if (e2 == null) {
                    e2 = null;
                }
                List list = (List) e2;
                if (list != null && (annotatedString = (AnnotatedString) CollectionsKt.t(list)) != null) {
                    return annotatedString.k;
                }
            }
        }
        return null;
    }

    public static final boolean x(ScrollAxisRange scrollAxisRange, float f) {
        Function0 function0 = scrollAxisRange.a;
        if (f >= 0.0f || ((Number) function0.a()).floatValue() <= 0.0f) {
            if (f > 0.0f && ((Number) function0.a()).floatValue() < ((Number) scrollAxisRange.b.a()).floatValue()) {
                return true;
            }
            return false;
        }
        return true;
    }

    public static final boolean y(ScrollAxisRange scrollAxisRange) {
        Function0 function0 = scrollAxisRange.a;
        if (((Number) function0.a()).floatValue() > 0.0f) {
            return true;
        }
        ((Number) function0.a()).floatValue();
        ((Number) scrollAxisRange.b.a()).floatValue();
        return false;
    }

    public static final boolean z(ScrollAxisRange scrollAxisRange) {
        Function0 function0 = scrollAxisRange.a;
        if (((Number) function0.a()).floatValue() < ((Number) scrollAxisRange.b.a()).floatValue()) {
            return true;
        }
        ((Number) function0.a()).floatValue();
        return false;
    }

    public final int A(int i) {
        if (i == this.m.getSemanticsOwner().a().f) {
            return -1;
        }
        return i;
    }

    public final void B(SemanticsNode semanticsNode, SemanticsNodeCopy semanticsNodeCopy) {
        int[] iArr = IntSetKt.a;
        MutableIntSet mutableIntSet = new MutableIntSet();
        List j = SemanticsNode.j(4, semanticsNode);
        LayoutNode layoutNode = semanticsNode.c;
        int size = j.size();
        for (int i = 0; i < size; i++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) j.get(i);
            IntObjectMap s = s();
            int i2 = semanticsNode2.f;
            if (s.a(i2)) {
                if (!semanticsNodeCopy.b.a(i2)) {
                    w(layoutNode);
                    return;
                }
                mutableIntSet.b(i2);
            }
        }
        MutableIntSet mutableIntSet2 = semanticsNodeCopy.b;
        int[] iArr2 = mutableIntSet2.b;
        long[] jArr = mutableIntSet2.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j2 = jArr[i3];
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j2) < 128 && !mutableIntSet.a(iArr2[(i3 << 3) + i5])) {
                            w(layoutNode);
                            return;
                        }
                        j2 >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                }
                if (i3 == length) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        List j3 = SemanticsNode.j(4, semanticsNode);
        int size2 = j3.size();
        for (int i6 = 0; i6 < size2; i6++) {
            SemanticsNode semanticsNode3 = (SemanticsNode) j3.get(i6);
            SemanticsNodeCopy semanticsNodeCopy2 = (SemanticsNodeCopy) this.P.b(semanticsNode3.f);
            if (semanticsNodeCopy2 != null && s().a(semanticsNode3.f)) {
                B(semanticsNode3, semanticsNodeCopy2);
            }
        }
    }

    public final boolean C(AccessibilityEvent accessibilityEvent) {
        if (!v()) {
            return false;
        }
        if (accessibilityEvent.getEventType() == 2048 || accessibilityEvent.getEventType() == 32768) {
            this.x = true;
        }
        try {
            return ((Boolean) this.o.b(accessibilityEvent)).booleanValue();
        } finally {
            this.x = false;
        }
    }

    public final boolean D(int i, int i2, Integer num, List list) {
        if (i != Integer.MIN_VALUE && v()) {
            AccessibilityEvent o = o(i, i2);
            if (num != null) {
                o.setContentChangeTypes(num.intValue());
            }
            if (list != null) {
                o.setContentDescription(ListUtilsKt.a(list, ",", null, 62));
            }
            return C(o);
        }
        return false;
    }

    public final void F(String str, int i, int i2) {
        AccessibilityEvent o = o(A(i), 32);
        o.setContentChangeTypes(i2);
        if (str != null) {
            o.getText().add(str);
        }
        C(o);
    }

    public final void G(int i) {
        PendingTextTraversedEvent pendingTextTraversedEvent = this.H;
        if (pendingTextTraversedEvent != null) {
            SemanticsNode semanticsNode = pendingTextTraversedEvent.a;
            if (i != semanticsNode.f) {
                return;
            }
            if (SystemClock.uptimeMillis() - pendingTextTraversedEvent.f <= 1000) {
                AccessibilityEvent o = o(A(semanticsNode.f), 131072);
                o.setFromIndex(pendingTextTraversedEvent.d);
                o.setToIndex(pendingTextTraversedEvent.e);
                o.setAction(pendingTextTraversedEvent.b);
                o.setMovementGranularity(pendingTextTraversedEvent.c);
                o.getText().add(t(semanticsNode));
                C(o);
            }
        }
        this.H = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:230:0x0512, code lost:
    
        if (r5 != null) goto L586;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0517, code lost:
    
        if (r5 == null) goto L586;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0127, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(r1, r13) != false) goto L387;
     */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0524  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void H(IntObjectMap intObjectMap) {
        Integer num;
        ArrayList arrayList;
        ArrayList arrayList2;
        int[] iArr;
        long[] jArr;
        Integer num2;
        int i;
        int i2;
        Integer num3;
        ArrayList arrayList3;
        ArrayList arrayList4;
        int[] iArr2;
        long[] jArr2;
        int i3;
        int i4;
        Integer num4;
        int i5;
        SemanticsNode semanticsNode;
        SemanticsConfiguration semanticsConfiguration;
        SemanticsNode semanticsNode2;
        boolean z;
        int i6;
        boolean z2;
        boolean z3;
        MutableScatterMap mutableScatterMap;
        LayoutNode layoutNode;
        int i7;
        SemanticsConfiguration semanticsConfiguration2;
        Integer num5;
        ArrayList arrayList5;
        ArrayList arrayList6;
        long j;
        int i8;
        LayoutNode layoutNode2;
        SemanticsNode semanticsNode3;
        int i9;
        int i10;
        MutableScatterMap mutableScatterMap2;
        int i11;
        Integer num6;
        ScrollObservationScope scrollObservationScope;
        boolean z4;
        ArrayList arrayList7;
        ScrollObservationScope scrollObservationScope2;
        boolean z5;
        boolean z6;
        boolean z7;
        int i12;
        String str;
        MutableScatterMap mutableScatterMap3;
        int i13;
        int i14;
        int i15;
        boolean z8;
        boolean z9;
        MutableScatterMap mutableScatterMap4;
        AccessibilityEvent p;
        MutableScatterMap mutableScatterMap5;
        MutableScatterMap mutableScatterMap6;
        boolean z10;
        String str2;
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = this;
        IntObjectMap intObjectMap2 = intObjectMap;
        Integer num7 = 64;
        ArrayList arrayList8 = androidComposeViewAccessibilityDelegateCompat.U;
        ArrayList arrayList9 = new ArrayList(arrayList8);
        arrayList8.clear();
        int[] iArr3 = intObjectMap2.b;
        long[] jArr3 = intObjectMap2.a;
        int i16 = 2;
        int length = jArr3.length - 2;
        int i17 = 0;
        Integer num8 = 0;
        if (length >= 0) {
            int i18 = 0;
            while (true) {
                long j2 = jArr3[i18];
                int i19 = i16;
                int i20 = length;
                if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i21 = 8;
                    int i22 = 8 - ((~(i18 - i20)) >>> 31);
                    long j3 = j2;
                    int i23 = i17;
                    while (i23 < i22) {
                        if ((j3 & 255) < 128) {
                            int i24 = iArr3[(i18 << 3) + i23];
                            SemanticsNodeCopy semanticsNodeCopy = (SemanticsNodeCopy) androidComposeViewAccessibilityDelegateCompat.P.b(i24);
                            if (semanticsNodeCopy != null) {
                                SemanticsConfiguration semanticsConfiguration3 = semanticsNodeCopy.a;
                                MutableScatterMap mutableScatterMap7 = semanticsConfiguration3.j;
                                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) intObjectMap2.b(i24);
                                int i25 = i21;
                                if (semanticsNodeWithAdjustedBounds != null) {
                                    semanticsNode = semanticsNodeWithAdjustedBounds.a;
                                } else {
                                    semanticsNode = null;
                                }
                                if (semanticsNode != null) {
                                    LayoutNode layoutNode3 = semanticsNode.c;
                                    SemanticsConfiguration semanticsConfiguration4 = semanticsNode.d;
                                    iArr2 = iArr3;
                                    int i26 = semanticsNode.f;
                                    jArr2 = jArr3;
                                    MutableScatterMap mutableScatterMap8 = semanticsConfiguration4.j;
                                    i4 = i18;
                                    Object[] objArr = mutableScatterMap8.b;
                                    Object[] objArr2 = mutableScatterMap8.c;
                                    long[] jArr4 = mutableScatterMap8.a;
                                    i2 = i23;
                                    int length2 = jArr4.length - 2;
                                    if (length2 >= 0) {
                                        LayoutNode layoutNode4 = layoutNode3;
                                        i3 = i22;
                                        int i27 = 0;
                                        z2 = false;
                                        while (true) {
                                            long j4 = jArr4[i27];
                                            SemanticsNode semanticsNode4 = semanticsNode;
                                            int i28 = i27;
                                            if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i29 = 8 - ((~(i28 - length2)) >>> 31);
                                                int i30 = 0;
                                                while (i30 < i29) {
                                                    if ((j4 & 255) < 128) {
                                                        int i31 = (i28 << 3) + i30;
                                                        Object obj = objArr[i31];
                                                        int i32 = length2;
                                                        Object obj2 = objArr2[i31];
                                                        semanticsConfiguration2 = semanticsConfiguration3;
                                                        Object obj3 = (SemanticsPropertyKey) obj;
                                                        j = j4;
                                                        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.v;
                                                        if (!Intrinsics.a(obj3, semanticsPropertyKey) && !Intrinsics.a(obj3, SemanticsProperties.w)) {
                                                            i8 = i30;
                                                            z4 = false;
                                                        } else {
                                                            int size = arrayList9.size();
                                                            i8 = i30;
                                                            int i33 = 0;
                                                            while (true) {
                                                                if (i33 < size) {
                                                                    int i34 = size;
                                                                    if (((ScrollObservationScope) arrayList9.get(i33)).j == i24) {
                                                                        scrollObservationScope = (ScrollObservationScope) arrayList9.get(i33);
                                                                        break;
                                                                    } else {
                                                                        i33++;
                                                                        size = i34;
                                                                    }
                                                                } else {
                                                                    scrollObservationScope = null;
                                                                    break;
                                                                }
                                                            }
                                                            if (scrollObservationScope != null) {
                                                                z4 = false;
                                                            } else {
                                                                scrollObservationScope = new ScrollObservationScope(i24, arrayList8);
                                                                z4 = true;
                                                            }
                                                            arrayList8.add(scrollObservationScope);
                                                        }
                                                        if (!z4) {
                                                            Object e = mutableScatterMap7.e(obj3);
                                                            if (e == null) {
                                                                e = null;
                                                            }
                                                        }
                                                        Object obj4 = SemanticsProperties.d;
                                                        if (Intrinsics.a(obj3, obj4)) {
                                                            obj2.getClass();
                                                            String str3 = (String) obj2;
                                                            boolean c = mutableScatterMap7.c(obj4);
                                                            int i35 = i25;
                                                            if (c) {
                                                                androidComposeViewAccessibilityDelegateCompat.F(str3, i24, i35);
                                                            }
                                                        } else {
                                                            int i36 = i25;
                                                            if (Intrinsics.a(obj3, SemanticsProperties.b)) {
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num7, i36);
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num8, i36);
                                                            } else if (Intrinsics.a(obj3, SemanticsProperties.L)) {
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, 8192, 8);
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num8, 8);
                                                            } else if (Intrinsics.a(obj3, SemanticsProperties.O)) {
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, 3072, 8);
                                                            } else if (Intrinsics.a(obj3, SemanticsProperties.c)) {
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num7, 8);
                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num8, 8);
                                                            } else {
                                                                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.K;
                                                                arrayList5 = arrayList9;
                                                                if (Intrinsics.a(obj3, semanticsPropertyKey2)) {
                                                                    Object e2 = mutableScatterMap8.e(SemanticsProperties.z);
                                                                    if (e2 == null) {
                                                                        e2 = null;
                                                                    }
                                                                    Role role = (Role) e2;
                                                                    if (role == null || role.a != 4) {
                                                                        z10 = false;
                                                                    } else {
                                                                        z10 = true;
                                                                    }
                                                                    if (z10) {
                                                                        Object e3 = mutableScatterMap8.e(semanticsPropertyKey2);
                                                                        if (e3 == null) {
                                                                            e3 = null;
                                                                        }
                                                                        if (Intrinsics.a(e3, Boolean.TRUE)) {
                                                                            AccessibilityEvent o = androidComposeViewAccessibilityDelegateCompat.o(androidComposeViewAccessibilityDelegateCompat.A(i24), 4);
                                                                            semanticsNode3 = semanticsNode4;
                                                                            layoutNode2 = layoutNode4;
                                                                            SemanticsNode semanticsNode5 = new SemanticsNode(semanticsNode3.a, true, layoutNode2, semanticsConfiguration4);
                                                                            Object e4 = semanticsNode5.k().j.e(SemanticsProperties.a);
                                                                            if (e4 == null) {
                                                                                e4 = null;
                                                                            }
                                                                            List list = (List) e4;
                                                                            i10 = i29;
                                                                            String str4 = null;
                                                                            if (list != null) {
                                                                                str4 = ListUtilsKt.a(list, ",", null, 62);
                                                                            }
                                                                            Object e5 = semanticsNode5.k().j.e(SemanticsProperties.C);
                                                                            if (e5 == null) {
                                                                                e5 = null;
                                                                            }
                                                                            List list2 = (List) e5;
                                                                            arrayList7 = arrayList8;
                                                                            if (list2 != null) {
                                                                                str2 = ListUtilsKt.a(list2, ",", null, 62);
                                                                            } else {
                                                                                str2 = null;
                                                                            }
                                                                            if (str4 != null) {
                                                                                o.setContentDescription(str4);
                                                                            }
                                                                            if (str2 != null) {
                                                                                o.getText().add(str2);
                                                                            }
                                                                            androidComposeViewAccessibilityDelegateCompat.C(o);
                                                                        } else {
                                                                            arrayList7 = arrayList8;
                                                                            layoutNode2 = layoutNode4;
                                                                            semanticsNode3 = semanticsNode4;
                                                                            i10 = i29;
                                                                            E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num8, 8);
                                                                        }
                                                                    } else {
                                                                        arrayList7 = arrayList8;
                                                                        layoutNode2 = layoutNode4;
                                                                        semanticsNode3 = semanticsNode4;
                                                                        i10 = i29;
                                                                        E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num7, 8);
                                                                        E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i24), 2048, num8, 8);
                                                                    }
                                                                } else {
                                                                    arrayList7 = arrayList8;
                                                                    layoutNode2 = layoutNode4;
                                                                    semanticsNode3 = semanticsNode4;
                                                                    i10 = i29;
                                                                    if (Intrinsics.a(obj3, SemanticsProperties.a)) {
                                                                        int A = androidComposeViewAccessibilityDelegateCompat.A(i24);
                                                                        obj2.getClass();
                                                                        androidComposeViewAccessibilityDelegateCompat.D(A, 2048, 4, (List) obj2);
                                                                    } else {
                                                                        Object obj5 = SemanticsProperties.G;
                                                                        String str5 = "";
                                                                        if (Intrinsics.a(obj3, obj5)) {
                                                                            if (mutableScatterMap8.c(SemanticsActions.k)) {
                                                                                Object e6 = mutableScatterMap7.e(obj5);
                                                                                if (e6 == null) {
                                                                                    e6 = null;
                                                                                }
                                                                                AnnotatedString annotatedString = (AnnotatedString) e6;
                                                                                if (annotatedString == null) {
                                                                                    annotatedString = "";
                                                                                }
                                                                                Object e7 = mutableScatterMap8.e(obj5);
                                                                                if (e7 == null) {
                                                                                    e7 = null;
                                                                                }
                                                                                CharSequence charSequence = (AnnotatedString) e7;
                                                                                if (charSequence == null) {
                                                                                    charSequence = "";
                                                                                }
                                                                                CharSequence P = P(charSequence);
                                                                                int length3 = annotatedString.length();
                                                                                int length4 = charSequence.length();
                                                                                if (length3 > length4) {
                                                                                    i13 = length4;
                                                                                } else {
                                                                                    i13 = length3;
                                                                                }
                                                                                Integer num9 = num8;
                                                                                int i37 = 0;
                                                                                while (true) {
                                                                                    num5 = num7;
                                                                                    if (i37 < i13) {
                                                                                        i14 = length3;
                                                                                        if (annotatedString.charAt(i37) != charSequence.charAt(i37)) {
                                                                                            break;
                                                                                        }
                                                                                        i37++;
                                                                                        length3 = i14;
                                                                                        num7 = num5;
                                                                                    } else {
                                                                                        i14 = length3;
                                                                                        break;
                                                                                    }
                                                                                }
                                                                                int i38 = 0;
                                                                                while (true) {
                                                                                    if (i38 < i13 - i37) {
                                                                                        i15 = i38;
                                                                                        if (annotatedString.charAt((i14 - 1) - i38) != charSequence.charAt((length4 - 1) - i15)) {
                                                                                            break;
                                                                                        } else {
                                                                                            i38 = i15 + 1;
                                                                                        }
                                                                                    } else {
                                                                                        i15 = i38;
                                                                                        break;
                                                                                    }
                                                                                }
                                                                                int i39 = (i14 - i15) - i37;
                                                                                int i40 = (length4 - i15) - i37;
                                                                                Object obj6 = SemanticsProperties.N;
                                                                                boolean c2 = mutableScatterMap7.c(obj6);
                                                                                boolean c3 = mutableScatterMap8.c(obj6);
                                                                                boolean c4 = mutableScatterMap7.c(SemanticsProperties.G);
                                                                                if (c4 && !c2 && c3) {
                                                                                    z8 = true;
                                                                                } else {
                                                                                    z8 = false;
                                                                                }
                                                                                if (c4 && c2 && !c3) {
                                                                                    z9 = true;
                                                                                } else {
                                                                                    z9 = false;
                                                                                }
                                                                                if (!z8 && !z9) {
                                                                                    p = androidComposeViewAccessibilityDelegateCompat.o(androidComposeViewAccessibilityDelegateCompat.A(i24), 16);
                                                                                    p.setFromIndex(i37);
                                                                                    p.setRemovedCount(i39);
                                                                                    p.setAddedCount(i40);
                                                                                    p.setBeforeText(annotatedString);
                                                                                    p.getText().add(P);
                                                                                    i11 = i24;
                                                                                    mutableScatterMap4 = mutableScatterMap7;
                                                                                    num8 = num9;
                                                                                } else {
                                                                                    i11 = i24;
                                                                                    mutableScatterMap4 = mutableScatterMap7;
                                                                                    num8 = num9;
                                                                                    p = androidComposeViewAccessibilityDelegateCompat.p(androidComposeViewAccessibilityDelegateCompat.A(i24), num8, num9, Integer.valueOf(length4), P);
                                                                                }
                                                                                p.setClassName("android.widget.EditText");
                                                                                if (Build.VERSION.SDK_INT >= 37) {
                                                                                    Api37Impl.a(semanticsNode3, p);
                                                                                }
                                                                                androidComposeViewAccessibilityDelegateCompat.C(p);
                                                                                mutableScatterMap3 = mutableScatterMap4;
                                                                                if (z8 || z9) {
                                                                                    long j5 = ((TextRange) semanticsConfiguration4.c(SemanticsProperties.H)).a;
                                                                                    p.setFromIndex((int) (j5 >> 32));
                                                                                    p.setToIndex((int) (j5 & 4294967295L));
                                                                                    androidComposeViewAccessibilityDelegateCompat.C(p);
                                                                                    mutableScatterMap3 = mutableScatterMap4;
                                                                                }
                                                                            } else {
                                                                                i11 = i24;
                                                                                mutableScatterMap3 = mutableScatterMap7;
                                                                                num5 = num7;
                                                                                E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i11), 2048, Integer.valueOf(i19), 8);
                                                                            }
                                                                            num6 = num8;
                                                                            mutableScatterMap6 = mutableScatterMap3;
                                                                            arrayList6 = arrayList7;
                                                                            i9 = i32;
                                                                            mutableScatterMap5 = mutableScatterMap6;
                                                                            mutableScatterMap2 = mutableScatterMap5;
                                                                            i25 = 8;
                                                                            mutableScatterMap7 = mutableScatterMap2;
                                                                            layoutNode4 = layoutNode2;
                                                                            i29 = i10;
                                                                            i30 = i8 + 1;
                                                                            i24 = i11;
                                                                            semanticsNode4 = semanticsNode3;
                                                                            j4 = j >> 8;
                                                                            arrayList8 = arrayList6;
                                                                            length2 = i9;
                                                                            num8 = num6;
                                                                            semanticsConfiguration3 = semanticsConfiguration2;
                                                                            arrayList9 = arrayList5;
                                                                            num7 = num5;
                                                                        } else {
                                                                            i11 = i24;
                                                                            MutableScatterMap mutableScatterMap9 = mutableScatterMap7;
                                                                            num5 = num7;
                                                                            i9 = i32;
                                                                            SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.H;
                                                                            if (Intrinsics.a(obj3, semanticsPropertyKey3)) {
                                                                                Object e8 = mutableScatterMap8.e(obj5);
                                                                                if (e8 == null) {
                                                                                    e8 = null;
                                                                                }
                                                                                AnnotatedString annotatedString2 = (AnnotatedString) e8;
                                                                                if (annotatedString2 != null && (str = annotatedString2.k) != null) {
                                                                                    str5 = str;
                                                                                }
                                                                                long j6 = ((TextRange) semanticsConfiguration4.c(semanticsPropertyKey3)).a;
                                                                                num6 = num8;
                                                                                androidComposeViewAccessibilityDelegateCompat = this;
                                                                                androidComposeViewAccessibilityDelegateCompat.C(androidComposeViewAccessibilityDelegateCompat.p(androidComposeViewAccessibilityDelegateCompat.A(i11), Integer.valueOf((int) (j6 >> 32)), Integer.valueOf((int) (j6 & 4294967295L)), Integer.valueOf(str5.length()), P(str5)));
                                                                                androidComposeViewAccessibilityDelegateCompat.G(i26);
                                                                            } else {
                                                                                num6 = num8;
                                                                                if (!Intrinsics.a(obj3, semanticsPropertyKey) && !Intrinsics.a(obj3, SemanticsProperties.w)) {
                                                                                    if (Intrinsics.a(obj3, SemanticsProperties.l)) {
                                                                                        obj2.getClass();
                                                                                        if (((Boolean) obj2).booleanValue()) {
                                                                                            i12 = 8;
                                                                                            androidComposeViewAccessibilityDelegateCompat.C(androidComposeViewAccessibilityDelegateCompat.o(androidComposeViewAccessibilityDelegateCompat.A(i26), 8));
                                                                                        } else {
                                                                                            i12 = 8;
                                                                                        }
                                                                                        E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i26), 2048, num6, i12);
                                                                                    } else {
                                                                                        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsActions.x;
                                                                                        if (Intrinsics.a(obj3, semanticsPropertyKey4)) {
                                                                                            List list3 = (List) semanticsConfiguration4.c(semanticsPropertyKey4);
                                                                                            Object e9 = mutableScatterMap9.e(semanticsPropertyKey4);
                                                                                            if (e9 == null) {
                                                                                                e9 = null;
                                                                                            }
                                                                                            List list4 = (List) e9;
                                                                                            if (list4 != null) {
                                                                                                MutableScatterSet mutableScatterSet = ScatterSetKt.a;
                                                                                                MutableScatterSet mutableScatterSet2 = new MutableScatterSet();
                                                                                                if (list3.size() <= 0) {
                                                                                                    MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                                                                                                    if (list4.size() <= 0) {
                                                                                                        if (!z2 && mutableScatterSet2.equals(mutableScatterSet3)) {
                                                                                                            z7 = false;
                                                                                                        } else {
                                                                                                            z7 = true;
                                                                                                        }
                                                                                                    } else {
                                                                                                        list4.get(0).getClass();
                                                                                                        io.sentry.d.i();
                                                                                                        return;
                                                                                                    }
                                                                                                } else {
                                                                                                    list3.get(0).getClass();
                                                                                                    io.sentry.d.i();
                                                                                                    return;
                                                                                                }
                                                                                            } else if (!z2 && list3.isEmpty()) {
                                                                                                z7 = false;
                                                                                            } else {
                                                                                                z7 = true;
                                                                                            }
                                                                                            z2 = z7;
                                                                                        } else {
                                                                                            if (!z2) {
                                                                                                if (obj2 instanceof AccessibilityAction) {
                                                                                                    AccessibilityAction accessibilityAction = (AccessibilityAction) obj2;
                                                                                                    Object e10 = mutableScatterMap9.e(obj3);
                                                                                                    if (e10 == null) {
                                                                                                        e10 = null;
                                                                                                    }
                                                                                                    if (accessibilityAction != e10) {
                                                                                                        if (e10 instanceof AccessibilityAction) {
                                                                                                            String str6 = accessibilityAction.a;
                                                                                                            AccessibilityAction accessibilityAction2 = (AccessibilityAction) e10;
                                                                                                            Function function = accessibilityAction2.b;
                                                                                                            if (Intrinsics.a(str6, accessibilityAction2.a)) {
                                                                                                                Function function2 = accessibilityAction.b;
                                                                                                                if (function2 == null) {
                                                                                                                }
                                                                                                                if (function2 != null) {
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                        z6 = false;
                                                                                                        if (z6) {
                                                                                                            z5 = false;
                                                                                                            if (!z5) {
                                                                                                                z2 = false;
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                    z6 = true;
                                                                                                    if (z6) {
                                                                                                    }
                                                                                                }
                                                                                                z5 = true;
                                                                                                if (!z5) {
                                                                                                }
                                                                                            }
                                                                                            z2 = true;
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    androidComposeViewAccessibilityDelegateCompat.w(layoutNode2);
                                                                                    int size2 = arrayList7.size();
                                                                                    int i41 = 0;
                                                                                    while (true) {
                                                                                        if (i41 < size2) {
                                                                                            arrayList6 = arrayList7;
                                                                                            if (((ScrollObservationScope) arrayList6.get(i41)).j == i11) {
                                                                                                scrollObservationScope2 = (ScrollObservationScope) arrayList6.get(i41);
                                                                                                break;
                                                                                            } else {
                                                                                                i41++;
                                                                                                arrayList7 = arrayList6;
                                                                                            }
                                                                                        } else {
                                                                                            arrayList6 = arrayList7;
                                                                                            scrollObservationScope2 = null;
                                                                                            break;
                                                                                        }
                                                                                    }
                                                                                    scrollObservationScope2.getClass();
                                                                                    Object e11 = mutableScatterMap8.e(semanticsPropertyKey);
                                                                                    if (e11 == null) {
                                                                                        e11 = null;
                                                                                    }
                                                                                    scrollObservationScope2.n = (ScrollAxisRange) e11;
                                                                                    Object e12 = mutableScatterMap8.e(SemanticsProperties.w);
                                                                                    if (e12 == null) {
                                                                                        e12 = null;
                                                                                    }
                                                                                    scrollObservationScope2.o = (ScrollAxisRange) e12;
                                                                                    mutableScatterMap5 = mutableScatterMap9;
                                                                                    if (scrollObservationScope2.k.contains(scrollObservationScope2)) {
                                                                                        androidComposeViewAccessibilityDelegateCompat.m.getSnapshotObserver().a.e(scrollObservationScope2, androidComposeViewAccessibilityDelegateCompat.V, new p0(1, scrollObservationScope2, androidComposeViewAccessibilityDelegateCompat));
                                                                                        mutableScatterMap2 = mutableScatterMap9;
                                                                                        i25 = 8;
                                                                                        mutableScatterMap7 = mutableScatterMap2;
                                                                                        layoutNode4 = layoutNode2;
                                                                                        i29 = i10;
                                                                                        i30 = i8 + 1;
                                                                                        i24 = i11;
                                                                                        semanticsNode4 = semanticsNode3;
                                                                                        j4 = j >> 8;
                                                                                        arrayList8 = arrayList6;
                                                                                        length2 = i9;
                                                                                        num8 = num6;
                                                                                        semanticsConfiguration3 = semanticsConfiguration2;
                                                                                        arrayList9 = arrayList5;
                                                                                        num7 = num5;
                                                                                    }
                                                                                    mutableScatterMap2 = mutableScatterMap5;
                                                                                    i25 = 8;
                                                                                    mutableScatterMap7 = mutableScatterMap2;
                                                                                    layoutNode4 = layoutNode2;
                                                                                    i29 = i10;
                                                                                    i30 = i8 + 1;
                                                                                    i24 = i11;
                                                                                    semanticsNode4 = semanticsNode3;
                                                                                    j4 = j >> 8;
                                                                                    arrayList8 = arrayList6;
                                                                                    length2 = i9;
                                                                                    num8 = num6;
                                                                                    semanticsConfiguration3 = semanticsConfiguration2;
                                                                                    arrayList9 = arrayList5;
                                                                                    num7 = num5;
                                                                                }
                                                                            }
                                                                            arrayList6 = arrayList7;
                                                                            mutableScatterMap5 = mutableScatterMap9;
                                                                            mutableScatterMap2 = mutableScatterMap5;
                                                                            i25 = 8;
                                                                            mutableScatterMap7 = mutableScatterMap2;
                                                                            layoutNode4 = layoutNode2;
                                                                            i29 = i10;
                                                                            i30 = i8 + 1;
                                                                            i24 = i11;
                                                                            semanticsNode4 = semanticsNode3;
                                                                            j4 = j >> 8;
                                                                            arrayList8 = arrayList6;
                                                                            length2 = i9;
                                                                            num8 = num6;
                                                                            semanticsConfiguration3 = semanticsConfiguration2;
                                                                            arrayList9 = arrayList5;
                                                                            num7 = num5;
                                                                        }
                                                                    }
                                                                }
                                                                num6 = num8;
                                                                i11 = i24;
                                                                mutableScatterMap6 = mutableScatterMap7;
                                                                num5 = num7;
                                                                arrayList6 = arrayList7;
                                                                i9 = i32;
                                                                mutableScatterMap5 = mutableScatterMap6;
                                                                mutableScatterMap2 = mutableScatterMap5;
                                                                i25 = 8;
                                                                mutableScatterMap7 = mutableScatterMap2;
                                                                layoutNode4 = layoutNode2;
                                                                i29 = i10;
                                                                i30 = i8 + 1;
                                                                i24 = i11;
                                                                semanticsNode4 = semanticsNode3;
                                                                j4 = j >> 8;
                                                                arrayList8 = arrayList6;
                                                                length2 = i9;
                                                                num8 = num6;
                                                                semanticsConfiguration3 = semanticsConfiguration2;
                                                                arrayList9 = arrayList5;
                                                                num7 = num5;
                                                            }
                                                        }
                                                        num5 = num7;
                                                        arrayList5 = arrayList9;
                                                        arrayList6 = arrayList8;
                                                        layoutNode2 = layoutNode4;
                                                        semanticsNode3 = semanticsNode4;
                                                        i9 = i32;
                                                    } else {
                                                        semanticsConfiguration2 = semanticsConfiguration3;
                                                        num5 = num7;
                                                        arrayList5 = arrayList9;
                                                        arrayList6 = arrayList8;
                                                        j = j4;
                                                        i8 = i30;
                                                        layoutNode2 = layoutNode4;
                                                        semanticsNode3 = semanticsNode4;
                                                        i9 = length2;
                                                    }
                                                    num6 = num8;
                                                    i11 = i24;
                                                    i10 = i29;
                                                    mutableScatterMap2 = mutableScatterMap7;
                                                    i25 = 8;
                                                    mutableScatterMap7 = mutableScatterMap2;
                                                    layoutNode4 = layoutNode2;
                                                    i29 = i10;
                                                    i30 = i8 + 1;
                                                    i24 = i11;
                                                    semanticsNode4 = semanticsNode3;
                                                    j4 = j >> 8;
                                                    arrayList8 = arrayList6;
                                                    length2 = i9;
                                                    num8 = num6;
                                                    semanticsConfiguration3 = semanticsConfiguration2;
                                                    arrayList9 = arrayList5;
                                                    num7 = num5;
                                                }
                                                semanticsConfiguration = semanticsConfiguration3;
                                                num3 = num7;
                                                arrayList3 = arrayList9;
                                                arrayList4 = arrayList8;
                                                layoutNode = layoutNode4;
                                                semanticsNode2 = semanticsNode4;
                                                z = true;
                                                i7 = length2;
                                                num4 = num8;
                                                i6 = i24;
                                                int i42 = i29;
                                                mutableScatterMap = mutableScatterMap7;
                                                if (i42 != i25) {
                                                    break;
                                                }
                                            } else {
                                                semanticsConfiguration = semanticsConfiguration3;
                                                mutableScatterMap = mutableScatterMap7;
                                                num3 = num7;
                                                arrayList3 = arrayList9;
                                                arrayList4 = arrayList8;
                                                layoutNode = layoutNode4;
                                                semanticsNode2 = semanticsNode4;
                                                z = true;
                                                i7 = length2;
                                                num4 = num8;
                                                i6 = i24;
                                            }
                                            if (i28 == i7) {
                                                break;
                                            }
                                            num8 = num4;
                                            i24 = i6;
                                            mutableScatterMap7 = mutableScatterMap;
                                            layoutNode4 = layoutNode;
                                            arrayList9 = arrayList3;
                                            i25 = 8;
                                            i27 = i28 + 1;
                                            arrayList8 = arrayList4;
                                            length2 = i7;
                                            semanticsNode = semanticsNode2;
                                            semanticsConfiguration3 = semanticsConfiguration;
                                            num7 = num3;
                                        }
                                    } else {
                                        semanticsConfiguration = semanticsConfiguration3;
                                        num3 = num7;
                                        arrayList3 = arrayList9;
                                        arrayList4 = arrayList8;
                                        i3 = i22;
                                        semanticsNode2 = semanticsNode;
                                        z = true;
                                        num4 = num8;
                                        i6 = i24;
                                        z2 = false;
                                    }
                                    if (!z2) {
                                        Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it = semanticsConfiguration.iterator();
                                        while (true) {
                                            if (it.hasNext()) {
                                                if (!semanticsNode2.k().j.c(it.next().getKey())) {
                                                    z3 = z;
                                                    break;
                                                }
                                            } else {
                                                z3 = false;
                                                break;
                                            }
                                        }
                                        z2 = z3;
                                    }
                                    if (z2) {
                                        i5 = 8;
                                        E(androidComposeViewAccessibilityDelegateCompat, androidComposeViewAccessibilityDelegateCompat.A(i6), 2048, num4, 8);
                                    } else {
                                        i5 = 8;
                                    }
                                    j3 >>= i5;
                                    i23 = i2 + 1;
                                    intObjectMap2 = intObjectMap;
                                    arrayList8 = arrayList4;
                                    num8 = num4;
                                    i21 = i5;
                                    iArr3 = iArr2;
                                    jArr3 = jArr2;
                                    i18 = i4;
                                    i22 = i3;
                                    arrayList9 = arrayList3;
                                    num7 = num3;
                                } else {
                                    throw q.p("no value for specified key");
                                }
                            }
                        }
                        i2 = i23;
                        num3 = num7;
                        arrayList3 = arrayList9;
                        arrayList4 = arrayList8;
                        iArr2 = iArr3;
                        jArr2 = jArr3;
                        i3 = i22;
                        i4 = i18;
                        num4 = num8;
                        i5 = i21;
                        j3 >>= i5;
                        i23 = i2 + 1;
                        intObjectMap2 = intObjectMap;
                        arrayList8 = arrayList4;
                        num8 = num4;
                        i21 = i5;
                        iArr3 = iArr2;
                        jArr3 = jArr2;
                        i18 = i4;
                        i22 = i3;
                        arrayList9 = arrayList3;
                        num7 = num3;
                    }
                    num = num7;
                    arrayList = arrayList9;
                    arrayList2 = arrayList8;
                    iArr = iArr3;
                    jArr = jArr3;
                    int i43 = i18;
                    num2 = num8;
                    if (i22 == i21) {
                        i = i43;
                    } else {
                        return;
                    }
                } else {
                    num = num7;
                    arrayList = arrayList9;
                    arrayList2 = arrayList8;
                    iArr = iArr3;
                    jArr = jArr3;
                    num2 = num8;
                    i = i18;
                }
                if (i != i20) {
                    i18 = i + 1;
                    intObjectMap2 = intObjectMap;
                    length = i20;
                    arrayList8 = arrayList2;
                    num8 = num2;
                    i16 = i19;
                    iArr3 = iArr;
                    jArr3 = jArr;
                    arrayList9 = arrayList;
                    num7 = num;
                    i17 = 0;
                } else {
                    return;
                }
            }
        }
    }

    public final void I(LayoutNode layoutNode, MutableIntSet mutableIntSet) {
        SemanticsConfiguration y;
        if (layoutNode.L() && !this.m.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            LayoutNode layoutNode2 = null;
            if (!layoutNode.O.d(8)) {
                layoutNode = layoutNode.w();
                while (true) {
                    if (layoutNode != null) {
                        if (layoutNode.O.d(8)) {
                            break;
                        } else {
                            layoutNode = layoutNode.w();
                        }
                    } else {
                        layoutNode = null;
                        break;
                    }
                }
            }
            if (layoutNode != null && (y = layoutNode.y()) != null) {
                if (!y.l) {
                    LayoutNode w = layoutNode.w();
                    while (true) {
                        if (w != null) {
                            SemanticsConfiguration y2 = w.y();
                            if (y2 != null && y2.l) {
                                layoutNode2 = w;
                                break;
                            }
                            w = w.w();
                        } else {
                            break;
                        }
                    }
                    if (layoutNode2 != null) {
                        layoutNode = layoutNode2;
                    }
                }
                int i = layoutNode.k;
                if (mutableIntSet.b(i)) {
                    E(this, A(i), 2048, 1, 8);
                }
            }
        }
    }

    public final void J(LayoutNode layoutNode) {
        if (layoutNode.L() && !this.m.getAndroidViewsHandler$ui().getLayoutNodeToHolder().containsKey(layoutNode)) {
            int i = layoutNode.k;
            ScrollAxisRange scrollAxisRange = (ScrollAxisRange) this.y.b(i);
            ScrollAxisRange scrollAxisRange2 = (ScrollAxisRange) this.z.b(i);
            if (scrollAxisRange == null && scrollAxisRange2 == null) {
                return;
            }
            AccessibilityEvent o = o(i, 4096);
            if (scrollAxisRange != null) {
                o.setScrollX((int) ((Number) scrollAxisRange.a.a()).floatValue());
                o.setMaxScrollX((int) ((Number) scrollAxisRange.b.a()).floatValue());
            }
            if (scrollAxisRange2 != null) {
                o.setScrollY((int) ((Number) scrollAxisRange2.a.a()).floatValue());
                o.setMaxScrollY((int) ((Number) scrollAxisRange2.b.a()).floatValue());
            }
            C(o);
        }
    }

    public final boolean K(SemanticsNode semanticsNode, int i, int i2, boolean z) {
        String t;
        Integer num;
        Integer num2;
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        int i3 = semanticsNode.f;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.j;
        boolean z2 = false;
        if (semanticsConfiguration.j.c(semanticsPropertyKey) && AndroidComposeViewAccessibilityDelegateCompat_androidKt.a(semanticsNode)) {
            Function3 function3 = (Function3) ((AccessibilityAction) semanticsNode.d.c(semanticsPropertyKey)).b;
            if (function3 != null) {
                return ((Boolean) function3.f(Integer.valueOf(i), Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
            }
        } else if ((i != i2 || i2 != this.C) && (t = t(semanticsNode)) != null) {
            if (i < 0 || i != i2 || i2 > t.length()) {
                i = -1;
            }
            this.C = i;
            if (t.length() > 0) {
                z2 = true;
            }
            int A = A(i3);
            Integer num3 = null;
            if (z2) {
                num = Integer.valueOf(this.C);
            } else {
                num = null;
            }
            if (z2) {
                num2 = Integer.valueOf(this.C);
            } else {
                num2 = null;
            }
            if (z2) {
                num3 = Integer.valueOf(t.length());
            }
            C(p(A, num, num2, num3, t));
            G(i3);
            return true;
        }
        return false;
    }

    public final android.graphics.Rect M(float f, float f2, float f3, float f4) {
        long floatToRawIntBits = Float.floatToRawIntBits(f);
        AndroidComposeView androidComposeView = this.m;
        long q = androidComposeView.q((Float.floatToRawIntBits(f2) & 4294967295L) | (floatToRawIntBits << 32));
        long q2 = androidComposeView.q((Float.floatToRawIntBits(f4) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32));
        int i = (int) (q >> 32);
        int i2 = (int) (q2 >> 32);
        int i3 = (int) (q & 4294967295L);
        int i4 = (int) (q2 & 4294967295L);
        return new android.graphics.Rect((int) Math.floor(Math.min(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.floor(Math.min(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i), Float.intBitsToFloat(i2))), (int) Math.ceil(Math.max(Float.intBitsToFloat(i3), Float.intBitsToFloat(i4))));
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x013f, code lost:
    
        r28 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0149, code lost:
    
        if (((r7 & ((~r7) << 6)) & r20) == 0) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x014b, code lost:
    
        r25 = -1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void Q() {
        long j;
        long j2;
        long j3;
        char c;
        long[] jArr;
        long[] jArr2;
        long j4;
        int i;
        int i2;
        int i3;
        char c2;
        SemanticsNode semanticsNode;
        MutableIntSet mutableIntSet = new MutableIntSet();
        MutableIntSet mutableIntSet2 = this.J;
        int[] iArr = mutableIntSet2.b;
        long[] jArr3 = mutableIntSet2.a;
        int length = jArr3.length - 2;
        MutableIntObjectMap mutableIntObjectMap = this.P;
        int i4 = 8;
        if (length >= 0) {
            int i5 = 0;
            j = 128;
            j2 = 255;
            while (true) {
                long j5 = jArr3[i5];
                char c3 = 7;
                j3 = -9187201950435737472L;
                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j5 & 255) < 128) {
                            int i8 = iArr[(i5 << 3) + i7];
                            c2 = c3;
                            SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) s().b(i8);
                            String str = null;
                            if (semanticsNodeWithAdjustedBounds != null) {
                                semanticsNode = semanticsNodeWithAdjustedBounds.a;
                            } else {
                                semanticsNode = null;
                            }
                            if (semanticsNode != null) {
                                if (semanticsNode.d.j.c(SemanticsProperties.d)) {
                                }
                            }
                            mutableIntSet.b(i8);
                            SemanticsNodeCopy semanticsNodeCopy = (SemanticsNodeCopy) mutableIntObjectMap.b(i8);
                            if (semanticsNodeCopy != null) {
                                Object e = semanticsNodeCopy.a.j.e(SemanticsProperties.d);
                                if (e != 0) {
                                    str = e;
                                }
                                str = str;
                            }
                            F(str, i8, 32);
                        } else {
                            c2 = c3;
                        }
                        j5 >>= 8;
                        i7++;
                        c3 = c2;
                    }
                    c = c3;
                    if (i6 != 8) {
                        break;
                    }
                } else {
                    c = 7;
                }
                if (i5 == length) {
                    break;
                } else {
                    i5++;
                }
            }
        } else {
            j = 128;
            j2 = 255;
            j3 = -9187201950435737472L;
            c = 7;
        }
        int[] iArr2 = mutableIntSet.b;
        long[] jArr4 = mutableIntSet.a;
        int length2 = jArr4.length - 2;
        if (length2 >= 0) {
            int i9 = 0;
            while (true) {
                long j6 = jArr4[i9];
                if ((((~j6) << c) & j6 & j3) != j3) {
                    int i10 = 8 - ((~(i9 - length2)) >>> 31);
                    int i11 = 0;
                    while (i11 < i10) {
                        if ((j6 & j2) < j) {
                            int i12 = iArr2[(i9 << 3) + i11];
                            int hashCode = Integer.hashCode(i12) * (-862048943);
                            int i13 = hashCode ^ (hashCode << 16);
                            int i14 = i13 & 127;
                            int i15 = mutableIntSet2.c;
                            int i16 = (i13 >>> 7) & i15;
                            i = i4;
                            int i17 = 0;
                            while (true) {
                                long[] jArr5 = mutableIntSet2.a;
                                int i18 = i16 >> 3;
                                jArr2 = jArr4;
                                int i19 = (i16 & 7) << 3;
                                j4 = j6;
                                long j7 = (jArr5[i18] >>> i19) | ((jArr5[i18 + 1] << (64 - i19)) & ((-i19) >> 63));
                                int i20 = i15;
                                long j8 = (i14 * 72340172838076673L) ^ j7;
                                long j9 = (j8 - 72340172838076673L) & (~j8) & j3;
                                while (true) {
                                    if (j9 == 0) {
                                        break;
                                    }
                                    i3 = (i16 + (Long.numberOfTrailingZeros(j9) >> 3)) & i20;
                                    int i21 = i20;
                                    if (mutableIntSet2.b[i3] == i12) {
                                        break;
                                    }
                                    j9 &= j9 - 1;
                                    i20 = i21;
                                }
                                i17 += 8;
                                i16 = (i16 + i17) & i2;
                                jArr4 = jArr2;
                                i15 = i2;
                                j6 = j4;
                            }
                            int i22 = i3;
                            if (i22 >= 0) {
                                mutableIntSet2.g(i22);
                            }
                        } else {
                            jArr2 = jArr4;
                            j4 = j6;
                            i = i4;
                        }
                        j6 = j4 >> i;
                        i11++;
                        i4 = i;
                        jArr4 = jArr2;
                    }
                    jArr = jArr4;
                    if (i10 != i4) {
                        break;
                    }
                } else {
                    jArr = jArr4;
                }
                if (i9 == length2) {
                    break;
                }
                i9++;
                jArr4 = jArr;
                i4 = 8;
            }
        }
        mutableIntObjectMap.c();
        IntObjectMap s = s();
        int[] iArr3 = s.b;
        Object[] objArr = s.c;
        long[] jArr6 = s.a;
        int length3 = jArr6.length - 2;
        if (length3 >= 0) {
            int i23 = 0;
            while (true) {
                long j10 = jArr6[i23];
                if ((((~j10) << c) & j10 & j3) != j3) {
                    int i24 = 8 - ((~(i23 - length3)) >>> 31);
                    for (int i25 = 0; i25 < i24; i25++) {
                        if ((j10 & j2) < j) {
                            int i26 = (i23 << 3) + i25;
                            int i27 = iArr3[i26];
                            SemanticsNode semanticsNode2 = ((SemanticsNodeWithAdjustedBounds) objArr[i26]).a;
                            SemanticsConfiguration semanticsConfiguration = semanticsNode2.d;
                            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.d;
                            if (semanticsConfiguration.j.c(semanticsPropertyKey) && mutableIntSet2.b(i27)) {
                                F((String) semanticsNode2.d.c(semanticsPropertyKey), i27, 16);
                            }
                            mutableIntObjectMap.i(i27, new SemanticsNodeCopy(semanticsNode2, s()));
                        }
                        j10 >>= 8;
                    }
                    if (i24 != 8) {
                        break;
                    }
                }
                if (i23 == length3) {
                    break;
                } else {
                    i23++;
                }
            }
        }
        this.Q = new SemanticsNodeCopy(this.m.getSemanticsOwner().a(), s());
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat b(View view) {
        return this.s;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, String str, Bundle bundle) {
        SemanticsNode semanticsNode;
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        int i2;
        RectF[] rectFArr;
        Rect rect;
        int i3;
        int i4;
        int i5;
        TextLayoutResult textLayoutResult;
        Rect rect2;
        AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.a;
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) s().b(i);
        if (semanticsNodeWithAdjustedBounds != null && (semanticsNode = semanticsNodeWithAdjustedBounds.a) != null) {
            LayoutNode layoutNode = semanticsNode.c;
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
            String t = t(semanticsNode);
            if (Intrinsics.a(str, this.M)) {
                int b = this.K.b(i);
                if (b != -1) {
                    accessibilityNodeInfo.getExtras().putInt(str, b);
                    return;
                }
                return;
            }
            if (Intrinsics.a(str, this.N)) {
                int b2 = this.L.b(i);
                if (b2 != -1) {
                    accessibilityNodeInfo.getExtras().putInt(str, b2);
                    return;
                }
                return;
            }
            boolean c = mutableScatterMap.c(SemanticsActions.a);
            AndroidComposeView androidComposeView = this.m;
            int i6 = 0;
            if (c && bundle != null && Intrinsics.a(str, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY")) {
                int i7 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX", -1);
                int i8 = bundle.getInt("android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH", -1);
                if (i8 > 0 && i7 >= 0) {
                    if (t != null) {
                        i2 = t.length();
                    } else {
                        i2 = Integer.MAX_VALUE;
                    }
                    if (i7 < i2) {
                        TextLayoutResult a = SemanticsUtils_androidKt.a(semanticsConfiguration);
                        if (a != null) {
                            InnerNodeCoordinator innerNodeCoordinator = layoutNode.O.c;
                            if (!innerNodeCoordinator.l0.w) {
                                innerNodeCoordinator = null;
                            }
                            if (innerNodeCoordinator != null) {
                                long S = innerNodeCoordinator.S(0L);
                                Rect g = semanticsNode.g();
                                RectF[] rectFArr2 = new RectF[i8];
                                while (i6 < i8) {
                                    int i9 = i7 + i6;
                                    if (i9 < a.a.a.k.length()) {
                                        Rect i10 = a.b(i9).i(S);
                                        if (i10.g(g)) {
                                            rect = i10.e(g);
                                        } else {
                                            rect = null;
                                        }
                                        if (rect != null) {
                                            i3 = i6;
                                            long q = androidComposeView.q((Float.floatToRawIntBits(rect.a) << 32) | (Float.floatToRawIntBits(rect.b) & 4294967295L));
                                            float f = rect.c;
                                            long q2 = androidComposeView.q((Float.floatToRawIntBits(rect.d) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
                                            int i11 = (int) (q >> 32);
                                            i4 = i7;
                                            i5 = i8;
                                            int i12 = (int) (q2 >> 32);
                                            textLayoutResult = a;
                                            rect2 = g;
                                            int i13 = (int) (q & 4294967295L);
                                            int i14 = (int) (q2 & 4294967295L);
                                            rectFArr2[i3] = new RectF(Math.min(Float.intBitsToFloat(i11), Float.intBitsToFloat(i12)), Math.min(Float.intBitsToFloat(i13), Float.intBitsToFloat(i14)), Math.max(Float.intBitsToFloat(i11), Float.intBitsToFloat(i12)), Math.max(Float.intBitsToFloat(i13), Float.intBitsToFloat(i14)));
                                            i6 = i3 + 1;
                                            a = textLayoutResult;
                                            i8 = i5;
                                            g = rect2;
                                            i7 = i4;
                                        }
                                    }
                                    i4 = i7;
                                    i5 = i8;
                                    textLayoutResult = a;
                                    rect2 = g;
                                    i3 = i6;
                                    i6 = i3 + 1;
                                    a = textLayoutResult;
                                    i8 = i5;
                                    g = rect2;
                                    i7 = i4;
                                }
                                rectFArr = rectFArr2;
                                if (rectFArr == null) {
                                    accessibilityNodeInfo.getExtras().putParcelableArray(str, rectFArr);
                                    return;
                                }
                                return;
                            }
                        }
                        rectFArr = null;
                        if (rectFArr == null) {
                        }
                    }
                }
                Log.e("AccessibilityDelegate", "Invalid arguments for accessibility character locations");
                return;
            }
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.A;
            if (mutableScatterMap.c(semanticsPropertyKey) && bundle != null && Intrinsics.a(str, "androidx.compose.ui.semantics.testTag")) {
                Object e = mutableScatterMap.e(semanticsPropertyKey);
                if (e == null) {
                    obj5 = null;
                } else {
                    obj5 = e;
                }
                String str2 = (String) obj5;
                if (str2 != null) {
                    accessibilityNodeInfo.getExtras().putCharSequence(str, str2);
                    return;
                }
                return;
            }
            if (Intrinsics.a(str, "androidx.compose.ui.semantics.id")) {
                accessibilityNodeInfo.getExtras().putInt(str, semanticsNode.f);
                return;
            }
            if (Intrinsics.a(str, "androidx.compose.ui.semantics.shapeType")) {
                Object e2 = mutableScatterMap.e(SemanticsProperties.S);
                if (e2 == null) {
                    obj4 = null;
                } else {
                    obj4 = e2;
                }
                Shape shape = (Shape) obj4;
                if (shape != null) {
                    android.graphics.Rect rect3 = new android.graphics.Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect3);
                    Rect u = u(semanticsNode, rect3, shape);
                    float f2 = u.b;
                    float f3 = u.a;
                    Outline a2 = shape.a(u.c(), layoutNode.I, androidComposeView.getDensity());
                    if (a2 instanceof Outline.Rectangle) {
                        accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 0);
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", L(a2, f3, f2));
                        return;
                    } else if (a2 instanceof Outline.Rounded) {
                        accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 1);
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", L(a2, f3, f2));
                        accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", N(a2));
                        return;
                    } else if (a2 instanceof Outline.Generic) {
                        accessibilityNodeInfo.getExtras().putInt("androidx.compose.ui.semantics.shapeType", 2);
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", O(a2, f3, f2));
                        return;
                    } else {
                        k8.e();
                        return;
                    }
                }
                return;
            }
            if (Intrinsics.a(str, "androidx.compose.ui.semantics.shapeRect")) {
                Object e3 = mutableScatterMap.e(SemanticsProperties.S);
                if (e3 == null) {
                    obj3 = null;
                } else {
                    obj3 = e3;
                }
                Shape shape2 = (Shape) obj3;
                if (shape2 != null) {
                    android.graphics.Rect rect4 = new android.graphics.Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect4);
                    Rect u2 = u(semanticsNode, rect4, shape2);
                    android.graphics.Rect L = L(shape2.a(u2.c(), layoutNode.I, androidComposeView.getDensity()), u2.a, u2.b);
                    if (L != null) {
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRect", L);
                        return;
                    }
                    return;
                }
                return;
            }
            if (Intrinsics.a(str, "androidx.compose.ui.semantics.shapeCorners")) {
                Object e4 = mutableScatterMap.e(SemanticsProperties.S);
                if (e4 == null) {
                    obj2 = null;
                } else {
                    obj2 = e4;
                }
                Shape shape3 = (Shape) obj2;
                if (shape3 != null) {
                    android.graphics.Rect rect5 = new android.graphics.Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect5);
                    float[] N = N(shape3.a(u(semanticsNode, rect5, shape3).c(), layoutNode.I, androidComposeView.getDensity()));
                    if (N != null) {
                        accessibilityNodeInfo.getExtras().putFloatArray("androidx.compose.ui.semantics.shapeCorners", N);
                        return;
                    }
                    return;
                }
                return;
            }
            if (Intrinsics.a(str, "androidx.compose.ui.semantics.shapeRegion")) {
                Object e5 = mutableScatterMap.e(SemanticsProperties.S);
                if (e5 == null) {
                    obj = null;
                } else {
                    obj = e5;
                }
                Shape shape4 = (Shape) obj;
                if (shape4 != null) {
                    android.graphics.Rect rect6 = new android.graphics.Rect();
                    accessibilityNodeInfo.getBoundsInScreen(rect6);
                    Rect u3 = u(semanticsNode, rect6, shape4);
                    Region O = O(shape4.a(u3.c(), layoutNode.I, androidComposeView.getDensity()), u3.a, u3.b);
                    if (O != null) {
                        accessibilityNodeInfo.getExtras().putParcelable("androidx.compose.ui.semantics.shapeRegion", O);
                    }
                }
            }
        }
    }

    public final android.graphics.Rect k(SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds) {
        IntRect intRect = semanticsNodeWithAdjustedBounds.b;
        return M(intRect.a, intRect.b, intRect.c, intRect.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c4, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(r7, r0) == r1) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0069 A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:12:0x002c, B:14:0x0051, B:20:0x0061, B:22:0x0069, B:24:0x0072, B:31:0x0090, B:34:0x009f, B:38:0x00a7, B:39:0x00aa, B:41:0x00ab, B:48:0x003f, B:50:0x0046, B:26:0x0077, B:28:0x007c, B:30:0x008d), top: B:7:0x0022, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00c4 -> B:13:0x002f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object l(ContinuationImpl continuationImpl) {
        AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1 androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1;
        int i;
        ArraySet arraySet;
        MutableIntSet mutableIntSet;
        ChannelIterator it;
        MutableIntSet mutableIntSet2;
        Object b;
        try {
            if (continuationImpl instanceof AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1) {
                androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1 = (AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1) continuationImpl;
                int i2 = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q = i2 - Integer.MIN_VALUE;
                    Object obj = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.o;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q;
                    arraySet = this.E;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                it = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.n;
                                mutableIntSet2 = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.m;
                                ResultKt.b(obj);
                                mutableIntSet = mutableIntSet2;
                                androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.m = mutableIntSet;
                                androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.n = it;
                                androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q = 1;
                                b = it.b(androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1);
                                if (b == coroutineSingletons) {
                                    mutableIntSet2 = mutableIntSet;
                                    obj = b;
                                    if (!((Boolean) obj).booleanValue()) {
                                        it.next();
                                        if (v()) {
                                            Trace.beginSection("Compose:semantics:boundUpdates");
                                            try {
                                                int i3 = arraySet.l;
                                                for (int i4 = 0; i4 < i3; i4++) {
                                                    LayoutNode layoutNode = (LayoutNode) arraySet.k[i4];
                                                    I(layoutNode, mutableIntSet2);
                                                    J(layoutNode);
                                                }
                                                mutableIntSet2.c();
                                                Trace.endSection();
                                                Handler handler = this.m.getHandler();
                                                if (!this.R && handler != null) {
                                                    this.R = true;
                                                    handler.post(this.T);
                                                }
                                            } finally {
                                            }
                                        }
                                        arraySet.clear();
                                        this.y.c();
                                        this.z.c();
                                        long j = this.q;
                                        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.m = mutableIntSet2;
                                        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.n = it;
                                        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q = 2;
                                    } else {
                                        arraySet.clear();
                                        return Unit.a;
                                    }
                                } else {
                                    return coroutineSingletons;
                                }
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            it = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.n;
                            mutableIntSet2 = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.m;
                            ResultKt.b(obj);
                            if (!((Boolean) obj).booleanValue()) {
                            }
                        }
                    } else {
                        ResultKt.b(obj);
                        mutableIntSet = new MutableIntSet();
                        it = this.F.iterator();
                        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.m = mutableIntSet;
                        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.n = it;
                        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q = 1;
                        b = it.b(androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1);
                        if (b == coroutineSingletons) {
                        }
                    }
                }
            }
            if (i == 0) {
            }
        } catch (Throwable th) {
            arraySet.clear();
            throw th;
        }
        androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1 = new AndroidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1(this, continuationImpl);
        Object obj2 = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = androidComposeViewAccessibilityDelegateCompat$boundsUpdatesEventLoop$1.q;
        arraySet = this.E;
    }

    public final boolean m(int i, long j, boolean z) {
        SemanticsPropertyKey semanticsPropertyKey;
        long[] jArr;
        Object[] objArr;
        long[] jArr2;
        Object[] objArr2;
        int i2;
        if (Intrinsics.a(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            IntObjectMap s = s();
            if (!Offset.c(j, 9205357640488583168L) && (((9223372034707292159L & j) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                if (z) {
                    semanticsPropertyKey = SemanticsProperties.w;
                } else if (!z) {
                    semanticsPropertyKey = SemanticsProperties.v;
                } else {
                    k8.e();
                    return false;
                }
                Object[] objArr3 = s.c;
                long[] jArr3 = s.a;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    boolean z2 = false;
                    while (true) {
                        long j2 = jArr3[i3];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i4 = 8;
                            int i5 = 8 - ((~(i3 - length)) >>> 31);
                            int i6 = 0;
                            while (i6 < i5) {
                                if ((255 & j2) < 128) {
                                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) objArr3[(i3 << 3) + i6];
                                    IntRect intRect = semanticsNodeWithAdjustedBounds.b;
                                    i2 = i4;
                                    jArr2 = jArr3;
                                    objArr2 = objArr3;
                                    if (new Rect(intRect.a, intRect.b, intRect.c, intRect.d).a(j)) {
                                        Object e = semanticsNodeWithAdjustedBounds.a.d.j.e(semanticsPropertyKey);
                                        if (e == null) {
                                            e = null;
                                        }
                                        ScrollAxisRange scrollAxisRange = (ScrollAxisRange) e;
                                        if (scrollAxisRange != null) {
                                            Function0 function0 = scrollAxisRange.a;
                                            if (i < 0) {
                                                if (((Number) function0.a()).floatValue() <= 0.0f) {
                                                }
                                                z2 = true;
                                            } else {
                                                if (((Number) function0.a()).floatValue() >= ((Number) scrollAxisRange.b.a()).floatValue()) {
                                                }
                                                z2 = true;
                                            }
                                        }
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    objArr2 = objArr3;
                                    i2 = i4;
                                }
                                j2 >>= i2;
                                i6++;
                                i4 = i2;
                                jArr3 = jArr2;
                                objArr3 = objArr2;
                            }
                            jArr = jArr3;
                            objArr = objArr3;
                            if (i5 != i4) {
                                return z2;
                            }
                        } else {
                            jArr = jArr3;
                            objArr = objArr3;
                        }
                        if (i3 != length) {
                            i3++;
                            jArr3 = jArr;
                            objArr3 = objArr;
                        } else {
                            return z2;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final void n() {
        Trace.beginSection("Compose:semantics:sendAccessibilitySemanticsStructureChangeEvents");
        try {
            if (v()) {
                B(this.m.getSemanticsOwner().a(), this.Q);
            }
            Trace.endSection();
            Trace.beginSection("Compose:semantics:sendSemanticsPropertyChangeEvents");
            try {
                H(s());
                Trace.endSection();
                Trace.beginSection("Compose:semantics:updateSemanticsNodesCopyAndPanes");
                try {
                    Q();
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public final AccessibilityEvent o(int i, int i2) {
        SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds;
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        obtain.setEnabled(true);
        obtain.setClassName("android.view.View");
        AndroidComposeView androidComposeView = this.m;
        obtain.setPackageName(androidComposeView.getContext().getPackageName());
        obtain.setSource(androidComposeView, i);
        if (v() && (semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) s().b(i)) != null) {
            SemanticsNode semanticsNode = semanticsNodeWithAdjustedBounds.a;
            obtain.setPassword(semanticsNode.d.j.c(SemanticsProperties.N));
            Object e = semanticsNode.d.j.e(SemanticsProperties.o);
            if (e == null) {
                e = null;
            }
            AccessibilityEventCompat.a(obtain, Intrinsics.a(e, Boolean.TRUE));
        }
        return obtain;
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        this.r = null;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        this.r = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.p;
        if (accessibilityManager.isEnabled()) {
            this.r = null;
        }
        accessibilityManager.addAccessibilityStateChangeListener(this);
        accessibilityManager.addTouchExplorationStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        Handler handler = this.m.getHandler();
        handler.getClass();
        handler.removeCallbacks(this.T);
        android.view.accessibility.AccessibilityManager accessibilityManager = this.p;
        accessibilityManager.removeAccessibilityStateChangeListener(this);
        accessibilityManager.removeTouchExplorationStateChangeListener(this);
    }

    public final AccessibilityEvent p(int i, Integer num, Integer num2, Integer num3, CharSequence charSequence) {
        AccessibilityEvent o = o(i, 8192);
        if (num != null) {
            o.setFromIndex(num.intValue());
        }
        if (num2 != null) {
            o.setToIndex(num2.intValue());
        }
        if (num3 != null) {
            o.setItemCount(num3.intValue());
        }
        if (charSequence != null) {
            o.getText().add(charSequence);
        }
        return o;
    }

    public final int q(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        if (!semanticsConfiguration.j.c(SemanticsProperties.a)) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.H;
            if (semanticsConfiguration.j.c(semanticsPropertyKey)) {
                return (int) (((TextRange) semanticsConfiguration.c(semanticsPropertyKey)).a & 4294967295L);
            }
        }
        return this.C;
    }

    public final int r(SemanticsNode semanticsNode) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        if (!semanticsConfiguration.j.c(SemanticsProperties.a)) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.H;
            if (semanticsConfiguration.j.c(semanticsPropertyKey)) {
                return (int) (((TextRange) semanticsConfiguration.c(semanticsPropertyKey)).a >> 32);
            }
        }
        return this.C;
    }

    public final IntObjectMap s() {
        SemanticsNode semanticsNode;
        if (this.G) {
            this.G = false;
            AndroidComposeView androidComposeView = this.m;
            this.I = SemanticsOwnerKt.a(androidComposeView.getSemanticsOwner(), new h(4));
            if (v()) {
                MutableIntObjectMap mutableIntObjectMap = this.I;
                Resources resources = androidComposeView.getContext().getResources();
                MutableIntIntMap mutableIntIntMap = this.K;
                mutableIntIntMap.c();
                MutableIntIntMap mutableIntIntMap2 = this.L;
                mutableIntIntMap2.c();
                SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) mutableIntObjectMap.b(-1);
                if (semanticsNodeWithAdjustedBounds != null) {
                    semanticsNode = semanticsNodeWithAdjustedBounds.a;
                } else {
                    semanticsNode = null;
                }
                semanticsNode.getClass();
                ArrayList b = SemanticsSortKt.b(semanticsNode, new defpackage.c(4, mutableIntObjectMap), new defpackage.c(5, resources), CollectionsKt.B(semanticsNode));
                int i = 1;
                int size = b.size() - 1;
                if (1 <= size) {
                    while (true) {
                        int i2 = ((SemanticsNode) b.get(i - 1)).f;
                        int i3 = ((SemanticsNode) b.get(i)).f;
                        mutableIntIntMap.f(i2, i3);
                        mutableIntIntMap2.f(i3, i2);
                        if (i == size) {
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        return this.I;
    }

    public final Rect u(SemanticsNode semanticsNode, android.graphics.Rect rect, Shape shape) {
        AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1 = new AndroidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1(shape);
        LayoutNode layoutNode = semanticsNode.c;
        Modifier.Node node = layoutNode.O.f;
        DelegatableNode delegatableNode = null;
        if ((node.m & 8) != 0) {
            loop0: while (true) {
                if (node == null) {
                    break;
                }
                if ((node.l & 8) != 0) {
                    Modifier.Node node2 = node;
                    MutableVector mutableVector = null;
                    while (node2 != null) {
                        if (node2 instanceof SemanticsModifierNode) {
                            ((SemanticsModifierNode) node2).E0(androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1);
                            if (androidComposeViewAccessibilityDelegateCompat$getShapeBounds$shapeNodeMatcher$1.j) {
                                delegatableNode = node2;
                                break loop0;
                            }
                        } else if ((node2.l & 8) != 0 && (node2 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                if ((node3.l & 8) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node2 = node3;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node2 != null) {
                                            mutableVector.b(node2);
                                            node2 = null;
                                        }
                                        mutableVector.b(node3);
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node2 = DelegatableNodeKt.b(mutableVector);
                    }
                }
                if ((node.m & 8) == 0) {
                    break;
                }
                node = node.o;
            }
        }
        DelegatableNode delegatableNode2 = (SemanticsModifierNode) delegatableNode;
        if (delegatableNode2 != null && ((Modifier.Node) delegatableNode2).j.w) {
            NodeCoordinator f = DelegatableNodeKt.f(delegatableNode2);
            Rect l = LayoutCoordinatesKt.c(f).l(f, false);
            android.graphics.Rect M = M(l.a, l.b, l.c, l.d);
            float f2 = M.left - rect.left;
            float f3 = M.top - rect.top;
            return new Rect(f2, f3, M.width() + f2, M.height() + f3);
        }
        return LayoutCoordinatesKt.b(layoutNode.O.d, false);
    }

    public final boolean v() {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.p;
        if (accessibilityManager.isEnabled()) {
            List<AccessibilityServiceInfo> list = this.r;
            if (list == null) {
                list = accessibilityManager.getEnabledAccessibilityServiceList(-1);
                this.r = list;
            }
            if (!list.isEmpty()) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void w(LayoutNode layoutNode) {
        if (this.E.add(layoutNode)) {
            this.F.j(Unit.a);
        }
    }
}
