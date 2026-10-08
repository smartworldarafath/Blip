package androidx.compose.foundation.text.selection;

import android.content.ClipDescription;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.ValidatingOffsetMappingKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGesturesModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequesterImpl;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.platform.AndroidClipboard;
import androidx.compose.ui.platform.AndroidClipboardImpl;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphKt;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.fe;
import defpackage.jb;
import defpackage.la;
import defpackage.u2;
import defpackage.w6;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager {
    public boolean A;
    public final UndoManager a;
    public LegacyTextFieldState d;
    public Function0 f;
    public Clipboard g;
    public CoroutineScope h;
    public PlatformSelectionBehaviors i;
    public HapticFeedback j;
    public FocusRequester k;
    public final MutableState l;
    public final MutableState m;
    public long n;
    public TextRange o;
    public long p;
    public final MutableState q;
    public final MutableState r;
    public int s;
    public TextFieldValue t;
    public SelectionLayout u;
    public TextRange v;
    public final MutableState w;
    public final ToolbarRequesterImpl x;
    public final TextFieldSelectionManager$touchSelectionObserver$1 y;
    public final TextFieldSelectionManager$mouseSelectionObserver$1 z;
    public OffsetMapping b = ValidatingOffsetMappingKt.a;
    public Function1 c = new la(1);
    public final MutableState e = SnapshotStateKt.g(new TextFieldValue(7, 0, (String) null));

    /* JADX WARN: Type inference failed for: r6v13, types: [androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequester, androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequesterImpl, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v14, types: [androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1] */
    /* JADX WARN: Type inference failed for: r6v15, types: [androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1] */
    public TextFieldSelectionManager(UndoManager undoManager) {
        this.a = undoManager;
        Boolean bool = Boolean.TRUE;
        this.l = SnapshotStateKt.g(bool);
        this.m = SnapshotStateKt.g(bool);
        this.n = 0L;
        this.p = 0L;
        this.q = SnapshotStateKt.g(null);
        this.r = SnapshotStateKt.g(null);
        this.s = -1;
        this.t = new TextFieldValue(7, 0L, (String) null);
        this.w = SnapshotStateKt.g(Boolean.FALSE);
        ?? obj = new Object();
        obj.b = ToolbarHandlerState.j;
        this.x = obj;
        this.y = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            public TextRange b;
            public boolean a = true;
            public SelectionAdjustment c = SelectionAdjustment.Companion.a;

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void a(long j, SelectionAdjustment selectionAdjustment) {
                long j2;
                TextLayoutResultProxy d;
                TextLayoutResultProxy d2;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                MutableState mutableState = textFieldSelectionManager.q;
                if (textFieldSelectionManager.l() && ((Handle) ((SnapshotMutableStateImpl) mutableState).getValue()) == null) {
                    ((SnapshotMutableStateImpl) mutableState).setValue(Handle.l);
                    textFieldSelectionManager.s = -1;
                    this.a = true;
                    this.c = selectionAdjustment;
                    textFieldSelectionManager.p();
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                    if (legacyTextFieldState != null && (d2 = legacyTextFieldState.d()) != null && d2.c(j)) {
                        if (textFieldSelectionManager.o().a.k.length() != 0) {
                            textFieldSelectionManager.h(false);
                            long c = TextFieldSelectionManager.c(textFieldSelectionManager, TextFieldValue.a(textFieldSelectionManager.o(), null, TextRange.b, 5), j, true, false, this.c, true, new HapticFeedbackType(0));
                            j2 = j;
                            textFieldSelectionManager.o = new TextRange(c);
                            this.b = new TextRange(c);
                        } else {
                            return;
                        }
                    } else {
                        j2 = j;
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                        if (legacyTextFieldState2 != null && (d = legacyTextFieldState2.d()) != null) {
                            int a = textFieldSelectionManager.b.a(d.b(j2, true));
                            TextFieldValue e = TextFieldSelectionManager.e(textFieldSelectionManager.o().a, TextRangeKt.a(a, a));
                            textFieldSelectionManager.h(false);
                            HapticFeedback hapticFeedback = textFieldSelectionManager.j;
                            if (hapticFeedback != null) {
                                ((PlatformHapticFeedback) hapticFeedback).a(0);
                            }
                            textFieldSelectionManager.c.b(e);
                            textFieldSelectionManager.v = new TextRange(e.b);
                        }
                        this.a = false;
                    }
                    textFieldSelectionManager.r(HandleState.j);
                    textFieldSelectionManager.n = j2;
                    ((SnapshotMutableStateImpl) textFieldSelectionManager.r).setValue(new Offset(j2));
                    textFieldSelectionManager.p = 0L;
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void b() {
                f();
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x00e8  */
            @Override // androidx.compose.foundation.text.TextDragObserver
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void e(long j) {
                TextLayoutResultProxy d;
                int b;
                long c;
                a aVar;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                if (textFieldSelectionManager.l() && textFieldSelectionManager.o().a.k.length() != 0) {
                    textFieldSelectionManager.p = Offset.f(textFieldSelectionManager.p, j);
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                    if (legacyTextFieldState != null && (d = legacyTextFieldState.d()) != null) {
                        ((SnapshotMutableStateImpl) textFieldSelectionManager.r).setValue(new Offset(Offset.f(textFieldSelectionManager.n, textFieldSelectionManager.p)));
                        if (textFieldSelectionManager.o == null) {
                            Offset j2 = textFieldSelectionManager.j();
                            j2.getClass();
                            if (!d.c(j2.a)) {
                                int a = textFieldSelectionManager.b.a(d.b(textFieldSelectionManager.n, true));
                                OffsetMapping offsetMapping = textFieldSelectionManager.b;
                                Offset j3 = textFieldSelectionManager.j();
                                j3.getClass();
                                if (a == offsetMapping.a(d.b(j3.a, true))) {
                                    aVar = SelectionAdjustment.Companion.a;
                                } else {
                                    aVar = SelectionAdjustment.Companion.b;
                                }
                                a aVar2 = aVar;
                                TextFieldValue o = textFieldSelectionManager.o();
                                Offset j4 = textFieldSelectionManager.j();
                                j4.getClass();
                                c = TextFieldSelectionManager.c(textFieldSelectionManager, o, j4.a, false, false, aVar2, true, new HapticFeedbackType(9));
                                this.b = new TextRange(c);
                                if (!TextRange.a(c, textFieldSelectionManager.o)) {
                                    this.a = false;
                                }
                            }
                        }
                        TextRange textRange = textFieldSelectionManager.o;
                        if (textRange != null) {
                            b = (int) (textRange.a >> 32);
                        } else {
                            b = d.b(textFieldSelectionManager.n, false);
                        }
                        Offset j5 = textFieldSelectionManager.j();
                        j5.getClass();
                        int b2 = d.b(j5.a, false);
                        if (textFieldSelectionManager.o != null || b != b2) {
                            TextFieldValue o2 = textFieldSelectionManager.o();
                            Offset j6 = textFieldSelectionManager.j();
                            j6.getClass();
                            c = TextFieldSelectionManager.c(textFieldSelectionManager, o2, j6.a, false, false, this.c, true, new HapticFeedbackType(9));
                            this.b = new TextRange(c);
                            if (!TextRange.a(c, textFieldSelectionManager.o)) {
                            }
                        } else {
                            return;
                        }
                    }
                    textFieldSelectionManager.u(false);
                }
            }

            public final void f() {
                long j;
                HandleState handleState;
                boolean z;
                boolean z2;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                ((SnapshotMutableStateImpl) textFieldSelectionManager.q).setValue(null);
                ((SnapshotMutableStateImpl) textFieldSelectionManager.r).setValue(null);
                this.c = SelectionAdjustment.Companion.a;
                boolean z3 = true;
                textFieldSelectionManager.u(true);
                TextRange textRange = this.b;
                if (textRange != null) {
                    j = textRange.a;
                } else {
                    j = textFieldSelectionManager.o().b;
                }
                boolean c = TextRange.c(j);
                if (c) {
                    handleState = HandleState.l;
                } else {
                    handleState = HandleState.k;
                }
                textFieldSelectionManager.r(handleState);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState != null) {
                    if (!c && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ((SnapshotMutableStateImpl) legacyTextFieldState.m).setValue(Boolean.valueOf(z2));
                }
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                if (legacyTextFieldState2 != null) {
                    if (!c && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, false)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    ((SnapshotMutableStateImpl) legacyTextFieldState2.n).setValue(Boolean.valueOf(z));
                }
                LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
                if (legacyTextFieldState3 != null) {
                    if (!c || !TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)) {
                        z3 = false;
                    }
                    ((SnapshotMutableStateImpl) legacyTextFieldState3.o).setValue(Boolean.valueOf(z3));
                }
                if (this.a) {
                    TextFieldSelectionManager.b(textFieldSelectionManager, textFieldSelectionManager.o);
                }
                textFieldSelectionManager.o = null;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onCancel() {
                f();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void c() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void d() {
            }
        };
        this.z = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1
            public boolean a = true;
            public TextRange b;

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean a(long j) {
                LegacyTextFieldState legacyTextFieldState;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                if (textFieldSelectionManager.l() && textFieldSelectionManager.o().a.k.length() != 0 && (legacyTextFieldState = textFieldSelectionManager.d) != null && legacyTextFieldState.d() != null) {
                    f(textFieldSelectionManager.o(), j, false, SelectionAdjustment.Companion.a);
                    return true;
                }
                return false;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean b(long j, SelectionAdjustment selectionAdjustment, int i) {
                LegacyTextFieldState legacyTextFieldState;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                if (textFieldSelectionManager.l() && textFieldSelectionManager.o().a.k.length() != 0 && (legacyTextFieldState = textFieldSelectionManager.d) != null && legacyTextFieldState.d() != null) {
                    FocusRequester focusRequester = textFieldSelectionManager.k;
                    if (focusRequester != null) {
                        FocusRequester.a(focusRequester);
                    }
                    textFieldSelectionManager.n = j;
                    textFieldSelectionManager.s = -1;
                    textFieldSelectionManager.h(true);
                    long f = f(textFieldSelectionManager.o(), textFieldSelectionManager.n, true, selectionAdjustment);
                    if (i >= 2) {
                        this.a = true;
                        this.b = new TextRange(f);
                    }
                    return true;
                }
                return false;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final void c() {
                if (this.a) {
                    TextFieldSelectionManager.b(TextFieldSelectionManager.this, this.b);
                }
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean d(long j, SelectionAdjustment selectionAdjustment) {
                LegacyTextFieldState legacyTextFieldState;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                if (textFieldSelectionManager.l() && textFieldSelectionManager.o().a.k.length() != 0 && (legacyTextFieldState = textFieldSelectionManager.d) != null && legacyTextFieldState.d() != null) {
                    f(textFieldSelectionManager.o(), j, false, selectionAdjustment);
                    return true;
                }
                return false;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public final boolean e(long j) {
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
                if (legacyTextFieldState != null && legacyTextFieldState.d() != null && textFieldSelectionManager.l()) {
                    textFieldSelectionManager.s = -1;
                    FocusRequester focusRequester = textFieldSelectionManager.k;
                    if (focusRequester != null) {
                        FocusRequester.a(focusRequester);
                    }
                    f(textFieldSelectionManager.o(), j, false, SelectionAdjustment.Companion.a);
                    return true;
                }
                return false;
            }

            public final long f(TextFieldValue textFieldValue, long j, boolean z, SelectionAdjustment selectionAdjustment) {
                HandleState handleState;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                long c = TextFieldSelectionManager.c(textFieldSelectionManager, textFieldValue, j, z, false, selectionAdjustment, false, null);
                if (!TextRange.a(c, this.b)) {
                    this.a = false;
                }
                if (TextRange.c(c)) {
                    handleState = HandleState.l;
                } else {
                    handleState = HandleState.k;
                }
                textFieldSelectionManager.r(handleState);
                return c;
            }
        };
    }

    public static final Pair a(TextFieldSelectionManager textFieldSelectionManager) {
        String str;
        TextRange textRange;
        AnnotatedString n = textFieldSelectionManager.n();
        if (n != null && (str = n.k) != null && (textRange = textFieldSelectionManager.v) != null) {
            long j = textRange.a;
            return new Pair(str, new TextRange(TextRangeKt.a(textFieldSelectionManager.b.b((int) (j >> 32)), textFieldSelectionManager.b.b((int) (j & 4294967295L)))));
        }
        return null;
    }

    public static final void b(TextFieldSelectionManager textFieldSelectionManager, TextRange textRange) {
        AnnotatedString n;
        String str;
        CoroutineScope coroutineScope;
        if (textRange != null) {
            long j = textRange.a;
            PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.i;
            if (platformSelectionBehaviors != null && (n = textFieldSelectionManager.n()) != null && (str = n.k) != null) {
                OffsetMapping offsetMapping = textFieldSelectionManager.b;
                long a = TextRangeKt.a(offsetMapping.b((int) (j >> 32)), offsetMapping.b((int) (j & 4294967295L)));
                if (str.length() > 0 && !TextRange.c(a) && (coroutineScope = textFieldSelectionManager.h) != null) {
                    BuildersKt.c(coroutineScope, null, null, new TextFieldSelectionManager$maybeSuggestSelection$1(platformSelectionBehaviors, str, a, textRange, textFieldSelectionManager, offsetMapping, null), 3);
                }
            }
        }
    }

    public static final long c(TextFieldSelectionManager textFieldSelectionManager, TextFieldValue textFieldValue, long j, boolean z, boolean z2, SelectionAdjustment selectionAdjustment, boolean z3, HapticFeedbackType hapticFeedbackType) {
        TextLayoutResultProxy d;
        int i;
        long j2;
        int i2;
        long j3;
        SelectionLayout selectionLayout;
        long j4;
        AnnotatedString annotatedString;
        Selection selection;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        HapticFeedback hapticFeedback;
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
        if (legacyTextFieldState != null && (d = legacyTextFieldState.d()) != null) {
            OffsetMapping offsetMapping = textFieldSelectionManager.b;
            long j5 = textFieldValue.b;
            AnnotatedString annotatedString2 = textFieldValue.a;
            int i3 = TextRange.c;
            long a = TextRangeKt.a(offsetMapping.b((int) (j5 >> 32)), textFieldSelectionManager.b.b((int) (j5 & 4294967295L)));
            int b = d.b(j, false);
            if (!z2 && !z) {
                i = (int) (a >> 32);
            } else {
                i = b;
            }
            if (!z2 || z) {
                j2 = 4294967295L;
                i2 = b;
            } else {
                j2 = 4294967295L;
                i2 = (int) (a & 4294967295L);
            }
            SelectionLayout selectionLayout2 = textFieldSelectionManager.u;
            int i4 = -1;
            if (!z && selectionLayout2 != null) {
                j3 = j2;
                int i5 = textFieldSelectionManager.s;
                if (i5 != -1) {
                    i4 = i5;
                }
            } else {
                j3 = j2;
            }
            TextLayoutResult textLayoutResult = d.a;
            if (z) {
                selection = null;
                annotatedString = annotatedString2;
                j4 = j5;
                selectionLayout = selectionLayout2;
            } else {
                selectionLayout = selectionLayout2;
                int i6 = (int) (a >> 32);
                j4 = j5;
                int i7 = (int) (a & j3);
                annotatedString = annotatedString2;
                selection = new Selection(new Selection.AnchorInfo(SelectionHelpersKt.a(textLayoutResult, i6), i6, 1L), new Selection.AnchorInfo(SelectionHelpersKt.a(textLayoutResult, i7), i7, 1L), TextRange.g(a));
            }
            SingleSelectionLayout singleSelectionLayout = new SingleSelectionLayout(z2, selection, new SelectableInfo(i, i2, i4, textLayoutResult));
            if (selection != null && selectionLayout != null) {
                SingleSelectionLayout singleSelectionLayout2 = (SingleSelectionLayout) selectionLayout;
                if (z2 == singleSelectionLayout2.a) {
                    SelectableInfo selectableInfo = singleSelectionLayout2.c;
                    if (i == selectableInfo.a && i2 == selectableInfo.b) {
                        return j4;
                    }
                }
            }
            textFieldSelectionManager.u = singleSelectionLayout;
            textFieldSelectionManager.s = b;
            Selection a2 = selectionAdjustment.a(singleSelectionLayout);
            long a3 = TextRangeKt.a(textFieldSelectionManager.b.a(a2.a.b), textFieldSelectionManager.b.a(a2.b.b));
            long j6 = j4;
            if (TextRange.b(a3, j6)) {
                return j6;
            }
            if (TextRange.g(a3) != TextRange.g(j6) && TextRange.b(TextRangeKt.a((int) (a3 & j3), (int) (a3 >> 32)), j6)) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (TextRange.c(a3) && TextRange.c(j6)) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z3 && annotatedString.k.length() > 0 && !z4 && !z5 && hapticFeedbackType != null && (hapticFeedback = textFieldSelectionManager.j) != null) {
                ((PlatformHapticFeedback) hapticFeedback).a(hapticFeedbackType.a);
            }
            textFieldSelectionManager.c.b(e(annotatedString, a3));
            textFieldSelectionManager.v = new TextRange(a3);
            if (!z3) {
                textFieldSelectionManager.u(!TextRange.c(a3));
            }
            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
            if (legacyTextFieldState2 != null) {
                ((SnapshotMutableStateImpl) legacyTextFieldState2.q).setValue(Boolean.valueOf(z3));
            }
            LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
            if (legacyTextFieldState3 != null) {
                if (!TextRange.c(a3) && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                ((SnapshotMutableStateImpl) legacyTextFieldState3.m).setValue(Boolean.valueOf(z9));
            }
            LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.d;
            if (legacyTextFieldState4 != null) {
                if (!TextRange.c(a3)) {
                    z6 = false;
                    if (TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, false)) {
                        z8 = true;
                        ((SnapshotMutableStateImpl) legacyTextFieldState4.n).setValue(Boolean.valueOf(z8));
                    }
                } else {
                    z6 = false;
                }
                z8 = z6;
                ((SnapshotMutableStateImpl) legacyTextFieldState4.n).setValue(Boolean.valueOf(z8));
            } else {
                z6 = false;
            }
            LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.d;
            if (legacyTextFieldState5 != null) {
                if (TextRange.c(a3) && TextFieldSelectionManager_androidKt.a(textFieldSelectionManager, true)) {
                    z7 = true;
                } else {
                    z7 = z6;
                }
                ((SnapshotMutableStateImpl) legacyTextFieldState5.o).setValue(Boolean.valueOf(z7));
            }
            return a3;
        }
        return TextRange.b;
    }

    public static TextFieldValue e(AnnotatedString annotatedString, long j) {
        return new TextFieldValue(annotatedString, j, (TextRange) null);
    }

    public final Job d(boolean z) {
        CoroutineScope coroutineScope = this.h;
        if (coroutineScope == null) {
            return null;
        }
        return BuildersKt.c(coroutineScope, null, CoroutineStart.m, new TextFieldSelectionManager$copy$1(this, z, null), 1);
    }

    public final void f() {
        CoroutineScope coroutineScope = this.h;
        if (coroutineScope != null) {
            BuildersKt.c(coroutineScope, null, CoroutineStart.m, new TextFieldSelectionManager$cut$1(this, null), 1);
        }
    }

    public final void g(Offset offset) {
        HandleState handleState;
        TextLayoutResultProxy textLayoutResultProxy;
        int e;
        if (!TextRange.c(o().b)) {
            LegacyTextFieldState legacyTextFieldState = this.d;
            if (legacyTextFieldState != null) {
                textLayoutResultProxy = legacyTextFieldState.d();
            } else {
                textLayoutResultProxy = null;
            }
            if (offset != null && textLayoutResultProxy != null) {
                e = this.b.a(textLayoutResultProxy.b(offset.a, true));
            } else {
                e = TextRange.e(o().b);
            }
            TextFieldValue a = TextFieldValue.a(o(), null, TextRangeKt.a(e, e), 5);
            this.c.b(a);
            this.v = new TextRange(a.b);
        }
        if (offset != null && o().a.k.length() > 0) {
            handleState = HandleState.l;
        } else {
            handleState = HandleState.j;
        }
        r(handleState);
        u(false);
    }

    public final void h(boolean z) {
        FocusRequester focusRequester;
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null && !legacyTextFieldState.b() && (focusRequester = this.k) != null) {
            FocusRequester.a(focusRequester);
        }
        this.t = o();
        u(z);
        r(HandleState.k);
    }

    public final Modifier i() {
        if (!l()) {
            return Modifier.Companion.b;
        }
        return TextContextMenuToolbarHandlerModifierKt.a(TextContextMenuGesturesModifierKt.a(new TextFieldSelectionManager$contextMenuAreaModifier$1(this, null)), this.x, new TextFieldSelectionManager$contextMenuAreaModifier$2(this, null), new TextFieldSelectionManager$contextMenuAreaModifier$3(this, null), new w6(this, 2));
    }

    public final Offset j() {
        return (Offset) ((SnapshotMutableStateImpl) this.r).getValue();
    }

    public final boolean k() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.l).getValue()).booleanValue();
    }

    public final boolean l() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.m).getValue()).booleanValue();
    }

    public final long m(boolean z) {
        TextLayoutResultProxy d;
        long j;
        int max;
        boolean z2;
        int a;
        float l;
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null && (d = legacyTextFieldState.d()) != null) {
            TextLayoutResult textLayoutResult = d.a;
            MultiParagraph multiParagraph = textLayoutResult.b;
            AnnotatedString n = n();
            if (n != null) {
                if (Intrinsics.a(n.k, textLayoutResult.a.a.k)) {
                    TextFieldValue o = o();
                    if (z) {
                        long j2 = o.b;
                        int i = TextRange.c;
                        j = j2 >> 32;
                    } else {
                        long j3 = o.b;
                        int i2 = TextRange.c;
                        j = j3 & 4294967295L;
                    }
                    int b = this.b.b((int) j);
                    boolean g = TextRange.g(o().b);
                    long j4 = textLayoutResult.c;
                    if (multiParagraph.d(b) < multiParagraph.f) {
                        if ((z && !g) || (!z && g)) {
                            max = b;
                        } else {
                            max = Math.max(b - 1, 0);
                        }
                        if (textLayoutResult.a(max) == textLayoutResult.g(b)) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        multiParagraph.l(b);
                        int length = multiParagraph.a.a.k.length();
                        ArrayList arrayList = multiParagraph.h;
                        if (b == length) {
                            a = CollectionsKt.u(arrayList);
                        } else {
                            a = MultiParagraphKt.a(b, arrayList);
                        }
                        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
                        AndroidParagraph androidParagraph = paragraphInfo.a;
                        int d2 = paragraphInfo.d(b);
                        TextLayout textLayout = androidParagraph.d;
                        if (z2) {
                            l = textLayout.k(d2, false);
                        } else {
                            l = textLayout.l(d2, false);
                        }
                        float c = RangesKt.c(l, 0.0f, (int) (j4 >> 32));
                        return (Float.floatToRawIntBits(RangesKt.c(multiParagraph.b(r8), 0.0f, (int) (j4 & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits(c) << 32);
                    }
                    return 9205357640488583168L;
                }
                return 9205357640488583168L;
            }
            return 9205357640488583168L;
        }
        return 9205357640488583168L;
    }

    public final AnnotatedString n() {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            return legacyTextFieldState.a.a;
        }
        return null;
    }

    public final TextFieldValue o() {
        return (TextFieldValue) ((SnapshotMutableStateImpl) this.e).getValue();
    }

    public final void p() {
        Job job;
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = this.x.a;
        if (textContextMenuToolbarHandlerNode != null && (job = textContextMenuToolbarHandlerNode.D) != null) {
            ((JobSupport) job).n(null);
            textContextMenuToolbarHandlerNode.D = null;
        }
    }

    public final void q() {
        CoroutineScope coroutineScope = this.h;
        if (coroutineScope != null) {
            BuildersKt.c(coroutineScope, null, CoroutineStart.m, new TextFieldSelectionManager$paste$1(this, null), 1);
        }
    }

    public final void r(HandleState handleState) {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.a() == handleState) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                ((SnapshotMutableStateImpl) legacyTextFieldState.k).setValue(handleState);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        if (((java.lang.Boolean) ((androidx.compose.runtime.SnapshotMutableStateImpl) r3.q).getValue()).booleanValue() == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s() {
        Function1 function1;
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Snapshot b = Snapshot.Companion.b(a);
        try {
            if (l()) {
                LegacyTextFieldState legacyTextFieldState = this.d;
                if (legacyTextFieldState != null) {
                }
                Snapshot.Companion.e(a, b, function1);
                this.x.a();
            }
        } finally {
            Snapshot.Companion.e(a, b, function1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object t(ContinuationImpl continuationImpl) {
        TextFieldSelectionManager$updateClipboardEntry$1 textFieldSelectionManager$updateClipboardEntry$1;
        int i;
        boolean hasMimeType;
        if (continuationImpl instanceof TextFieldSelectionManager$updateClipboardEntry$1) {
            textFieldSelectionManager$updateClipboardEntry$1 = (TextFieldSelectionManager$updateClipboardEntry$1) continuationImpl;
            int i2 = textFieldSelectionManager$updateClipboardEntry$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                textFieldSelectionManager$updateClipboardEntry$1.p = i2 - Integer.MIN_VALUE;
                Object obj = textFieldSelectionManager$updateClipboardEntry$1.n;
                Object obj2 = CoroutineSingletons.j;
                i = textFieldSelectionManager$updateClipboardEntry$1.p;
                if (i == 0) {
                    if (i == 1) {
                        this = textFieldSelectionManager$updateClipboardEntry$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    Clipboard clipboard = this.g;
                    if (clipboard != null) {
                        textFieldSelectionManager$updateClipboardEntry$1.m = this;
                        textFieldSelectionManager$updateClipboardEntry$1.p = 1;
                        if (clipboard instanceof AndroidClipboard) {
                            ClipDescription primaryClipDescription = ((AndroidClipboardImpl) ((AndroidClipboard) clipboard)).a.a().getPrimaryClipDescription();
                            if (primaryClipDescription == null) {
                                hasMimeType = false;
                            } else {
                                hasMimeType = primaryClipDescription.hasMimeType("text/*");
                            }
                            obj = Boolean.valueOf(hasMimeType);
                            if (obj == obj2) {
                                return obj2;
                            }
                        } else {
                            fe.l(jb.f("Extracting native reference is only supported from androidx.compose.ui.platform.AndroidClipboard instances but received ", Reflection.a(clipboard.getClass()).b()));
                            return null;
                        }
                    }
                    return Unit.a;
                }
                Boolean bool = (Boolean) obj;
                bool.getClass();
                ((SnapshotMutableStateImpl) this.w).setValue(bool);
                return Unit.a;
            }
        }
        textFieldSelectionManager$updateClipboardEntry$1 = new TextFieldSelectionManager$updateClipboardEntry$1(this, continuationImpl);
        Object obj3 = textFieldSelectionManager$updateClipboardEntry$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = textFieldSelectionManager$updateClipboardEntry$1.p;
        if (i == 0) {
        }
        Boolean bool2 = (Boolean) obj3;
        bool2.getClass();
        ((SnapshotMutableStateImpl) this.w).setValue(bool2);
        return Unit.a;
    }

    public final void u(boolean z) {
        LegacyTextFieldState legacyTextFieldState = this.d;
        if (legacyTextFieldState != null) {
            ((SnapshotMutableStateImpl) legacyTextFieldState.l).setValue(Boolean.valueOf(z));
        }
        if (z) {
            s();
        } else {
            p();
        }
    }
}
