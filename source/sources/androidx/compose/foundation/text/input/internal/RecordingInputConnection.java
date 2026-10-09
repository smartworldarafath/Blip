package androidx.compose.foundation.text.input.internal;

import android.R;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.DeleteGesture;
import android.view.inputmethod.DeleteRangeGesture;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputContentInfo;
import android.view.inputmethod.InsertGesture;
import android.view.inputmethod.JoinOrSplitGesture;
import android.view.inputmethod.PreviewableHandwritingGesture;
import android.view.inputmethod.RemoveSpaceGesture;
import android.view.inputmethod.SelectGesture;
import android.view.inputmethod.SelectRangeGesture;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextInCodePointsCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.SetComposingRegionCommand;
import androidx.compose.ui.text.input.SetComposingTextCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextFieldValueKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.b;
import defpackage.b9;
import defpackage.d1;
import defpackage.h6;
import defpackage.ma;
import defpackage.w2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.function.IntConsumer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RecordingInputConnection implements InputConnection {
    public final LegacyTextInputMethodRequest$createInputConnection$1 a;
    public final boolean b;
    public final LegacyTextFieldState c;
    public final TextFieldSelectionManager d;
    public final ViewConfiguration e;
    public int f;
    public TextFieldValue g;
    public int h;
    public boolean i;
    public final ArrayList j = new ArrayList();
    public boolean k = true;

    public RecordingInputConnection(TextFieldValue textFieldValue, LegacyTextInputMethodRequest$createInputConnection$1 legacyTextInputMethodRequest$createInputConnection$1, boolean z, LegacyTextFieldState legacyTextFieldState, TextFieldSelectionManager textFieldSelectionManager, ViewConfiguration viewConfiguration) {
        this.a = legacyTextInputMethodRequest$createInputConnection$1;
        this.b = z;
        this.c = legacyTextFieldState;
        this.d = textFieldSelectionManager;
        this.e = viewConfiguration;
        this.g = textFieldValue;
    }

    public final void b(EditCommand editCommand) {
        this.f++;
        try {
            this.j.add(editCommand);
        } finally {
            c();
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean beginBatchEdit() {
        boolean z = this.k;
        if (z) {
            this.f++;
            return true;
        }
        return z;
    }

    public final boolean c() {
        int i = this.f - 1;
        this.f = i;
        if (i == 0) {
            ArrayList arrayList = this.j;
            if (!arrayList.isEmpty()) {
                this.a.a.c.b(new ArrayList(arrayList));
                arrayList.clear();
            }
        }
        if (this.f > 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean clearMetaKeyStates(int i) {
        boolean z = this.k;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final void closeConnection() {
        this.j.clear();
        this.f = 0;
        this.k = false;
        ArrayList arrayList = this.a.a.j;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (Intrinsics.a(((WeakReference) arrayList.get(i)).get(), this)) {
                arrayList.remove(i);
                return;
            }
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCompletion(CompletionInfo completionInfo) {
        boolean z = this.k;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        boolean z = this.k;
        if (z) {
            return false;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitCorrection(CorrectionInfo correctionInfo) {
        boolean z = this.k;
        if (z) {
            return this.b;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean commitText(CharSequence charSequence, int i) {
        boolean z = this.k;
        if (z) {
            b(new CommitTextCommand(String.valueOf(charSequence), i));
        }
        return z;
    }

    public final void d(int i) {
        sendKeyEvent(new KeyEvent(0, i));
        sendKeyEvent(new KeyEvent(1, i));
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        boolean z = this.k;
        if (z) {
            b(new DeleteSurroundingTextCommand(i, i2));
            return true;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        boolean z = this.k;
        if (z) {
            b(new DeleteSurroundingTextInCodePointsCommand(i, i2));
            return true;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean endBatchEdit() {
        return c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.compose.ui.text.input.EditCommand] */
    @Override // android.view.inputmethod.InputConnection
    public final boolean finishComposingText() {
        boolean z = this.k;
        if (z) {
            b(new Object());
            return true;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final int getCursorCapsMode(int i) {
        TextFieldValue textFieldValue = this.g;
        return TextUtils.getCapsMode(textFieldValue.a.k, TextRange.f(textFieldValue.b), i);
    }

    @Override // android.view.inputmethod.InputConnection
    public final ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i) {
        boolean z = true;
        int i2 = 0;
        if ((i & 1) == 0) {
            z = false;
        }
        this.i = z;
        if (z) {
            if (extractedTextRequest != null) {
                i2 = extractedTextRequest.token;
            }
            this.h = i2;
        }
        return RecordingInputConnection_androidKt.a(this.g);
    }

    @Override // android.view.inputmethod.InputConnection
    public final Handler getHandler() {
        return null;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getSelectedText(int i) {
        if (TextRange.c(this.g.b)) {
            return null;
        }
        return TextFieldValueKt.a(this.g).k;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextAfterCursor(int i, int i2) {
        return TextFieldValueKt.b(this.g, i).k;
    }

    @Override // android.view.inputmethod.InputConnection
    public final CharSequence getTextBeforeCursor(int i, int i2) {
        return TextFieldValueKt.c(this.g, i).k;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performContextMenuAction(int i) {
        boolean z = this.k;
        if (z) {
            z = false;
            switch (i) {
                case R.id.selectAll:
                    b(new SetSelectionCommand(0, this.g.a.k.length()));
                    break;
                case R.id.cut:
                    d(277);
                    return false;
                case R.id.copy:
                    d(278);
                    return false;
                case R.id.paste:
                    d(279);
                    return false;
                default:
                    return false;
            }
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performEditorAction(int i) {
        int i2;
        boolean z = this.k;
        if (z) {
            z = true;
            if (i != 0) {
                switch (i) {
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        i2 = 2;
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        i2 = 3;
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        i2 = 4;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        i2 = 6;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        i2 = 7;
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        i2 = 5;
                        break;
                    default:
                        Log.w("RecordingIC", "IME sends unsupported Editor Action: " + i);
                        break;
                }
                this.a.a.d.b(new ImeAction(i2));
            }
            i2 = 1;
            this.a.a.d.b(new ImeAction(i2));
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02e1  */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    @Override // android.view.inputmethod.InputConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void performHandwritingGesture(HandwritingGesture handwritingGesture, Executor executor, IntConsumer intConsumer) {
        AnnotatedString annotatedString;
        AnnotatedString annotatedString2;
        PointF startPoint;
        PointF endPoint;
        char c;
        long j;
        int i;
        PointF insertionPoint;
        TextLayoutResultProxy d;
        String textToInsert;
        PointF joinOrSplitPoint;
        TextLayoutResultProxy d2;
        int granularity;
        int i2;
        RectF deletionStartArea;
        RectF deletionEndArea;
        boolean z;
        RectF selectionStartArea;
        RectF selectionEndArea;
        int granularity2;
        int i3;
        int granularity3;
        int i4;
        RectF deletionArea;
        boolean z2;
        RectF selectionArea;
        int granularity4;
        int i5;
        TextLayoutInput textLayoutInput;
        if (Build.VERSION.SDK_INT >= 34) {
            ma maVar = new ma(14, this);
            LegacyTextFieldState legacyTextFieldState = this.c;
            int i6 = 3;
            if (legacyTextFieldState != null && (annotatedString = legacyTextFieldState.j) != null) {
                TextLayoutResultProxy d3 = legacyTextFieldState.d();
                TextLayoutResult textLayoutResult = null;
                if (d3 != null && (textLayoutInput = d3.a.a) != null) {
                    annotatedString2 = textLayoutInput.a;
                } else {
                    annotatedString2 = null;
                }
                if (annotatedString.equals(annotatedString2)) {
                    boolean t = d1.t(handwritingGesture);
                    TextFieldSelectionManager textFieldSelectionManager = this.d;
                    if (t) {
                        SelectGesture p = b9.p(handwritingGesture);
                        selectionArea = p.getSelectionArea();
                        Rect c2 = RectHelper_androidKt.c(selectionArea);
                        granularity4 = p.getGranularity();
                        if (granularity4 != 1) {
                            i5 = 0;
                        } else {
                            i5 = 1;
                        }
                        long f = HandwritingGesture_androidKt.f(legacyTextFieldState, c2, i5);
                        if (TextRange.c(f)) {
                            i6 = HandwritingGestureApi34.a(b9.l(p), maVar);
                        } else {
                            maVar.b(new SetSelectionCommand((int) (f >> 32), (int) (f & 4294967295L)));
                            if (textFieldSelectionManager != null) {
                                textFieldSelectionManager.h(true);
                            }
                            i6 = 1;
                        }
                    } else if (b9.B(handwritingGesture)) {
                        DeleteGesture j2 = b9.j(handwritingGesture);
                        granularity3 = j2.getGranularity();
                        if (granularity3 != 1) {
                            i4 = 0;
                        } else {
                            i4 = 1;
                        }
                        deletionArea = j2.getDeletionArea();
                        long f2 = HandwritingGesture_androidKt.f(legacyTextFieldState, RectHelper_androidKt.c(deletionArea), i4);
                        if (TextRange.c(f2)) {
                            i6 = HandwritingGestureApi34.a(b9.l(j2), maVar);
                        } else {
                            if (i4 == 1) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            HandwritingGestureApi34.b(f2, annotatedString, z2, maVar);
                            i6 = 1;
                        }
                    } else if (b9.C(handwritingGesture)) {
                        SelectRangeGesture q = b9.q(handwritingGesture);
                        selectionStartArea = q.getSelectionStartArea();
                        Rect c3 = RectHelper_androidKt.c(selectionStartArea);
                        selectionEndArea = q.getSelectionEndArea();
                        Rect c4 = RectHelper_androidKt.c(selectionEndArea);
                        granularity2 = q.getGranularity();
                        if (granularity2 != 1) {
                            i3 = 0;
                        } else {
                            i3 = 1;
                        }
                        long b = HandwritingGesture_androidKt.b(legacyTextFieldState, c3, c4, i3);
                        if (TextRange.c(b)) {
                            i6 = HandwritingGestureApi34.a(b9.l(q), maVar);
                        } else {
                            maVar.b(new SetSelectionCommand((int) (b >> 32), (int) (b & 4294967295L)));
                            if (textFieldSelectionManager != null) {
                                textFieldSelectionManager.h(true);
                            }
                            i6 = 1;
                        }
                    } else if (b9.D(handwritingGesture)) {
                        DeleteRangeGesture k = b9.k(handwritingGesture);
                        granularity = k.getGranularity();
                        if (granularity != 1) {
                            i2 = 0;
                        } else {
                            i2 = 1;
                        }
                        deletionStartArea = k.getDeletionStartArea();
                        Rect c5 = RectHelper_androidKt.c(deletionStartArea);
                        deletionEndArea = k.getDeletionEndArea();
                        long b2 = HandwritingGesture_androidKt.b(legacyTextFieldState, c5, RectHelper_androidKt.c(deletionEndArea), i2);
                        if (TextRange.c(b2)) {
                            i6 = HandwritingGestureApi34.a(b9.l(k), maVar);
                        } else {
                            if (i2 == 1) {
                                z = true;
                            } else {
                                z = false;
                            }
                            HandwritingGestureApi34.b(b2, annotatedString, z, maVar);
                            i6 = 1;
                        }
                    } else {
                        boolean A = b9.A(handwritingGesture);
                        ViewConfiguration viewConfiguration = this.e;
                        if (A) {
                            JoinOrSplitGesture n = b9.n(handwritingGesture);
                            if (viewConfiguration != null) {
                                joinOrSplitPoint = n.getJoinOrSplitPoint();
                                int a = HandwritingGesture_androidKt.a(legacyTextFieldState, HandwritingGesture_androidKt.d(joinOrSplitPoint), viewConfiguration);
                                if (a != -1 && ((d2 = legacyTextFieldState.d()) == null || !HandwritingGesture_androidKt.c(d2.a, a))) {
                                    int i7 = a;
                                    while (i7 > 0) {
                                        int codePointBefore = Character.codePointBefore(annotatedString, i7);
                                        if (!HandwritingGesture_androidKt.h(codePointBefore)) {
                                            break;
                                        } else {
                                            i7 -= Character.charCount(codePointBefore);
                                        }
                                    }
                                    while (a < annotatedString.k.length()) {
                                        int codePointAt = Character.codePointAt(annotatedString, a);
                                        if (!HandwritingGesture_androidKt.h(codePointAt)) {
                                            break;
                                        } else {
                                            a += Character.charCount(codePointAt);
                                        }
                                    }
                                    long a2 = TextRangeKt.a(i7, a);
                                    if (TextRange.c(a2)) {
                                        int i8 = (int) (a2 >> 32);
                                        maVar.b(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i8, i8), new CommitTextCommand(" ", 1)}));
                                    } else {
                                        HandwritingGestureApi34.b(a2, annotatedString, false, maVar);
                                    }
                                    i6 = 1;
                                } else {
                                    i6 = HandwritingGestureApi34.a(b9.l(n), maVar);
                                }
                            } else {
                                i6 = HandwritingGestureApi34.a(b9.y(n), maVar);
                            }
                        } else if (b9.t(handwritingGesture)) {
                            InsertGesture m = b9.m(handwritingGesture);
                            if (viewConfiguration != null) {
                                insertionPoint = m.getInsertionPoint();
                                int a3 = HandwritingGesture_androidKt.a(legacyTextFieldState, HandwritingGesture_androidKt.d(insertionPoint), viewConfiguration);
                                if (a3 != -1 && ((d = legacyTextFieldState.d()) == null || !HandwritingGesture_androidKt.c(d.a, a3))) {
                                    textToInsert = m.getTextToInsert();
                                    maVar.b(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(a3, a3), new CommitTextCommand(textToInsert, 1)}));
                                    i6 = 1;
                                } else {
                                    i6 = HandwritingGestureApi34.a(b9.l(m), maVar);
                                }
                            } else {
                                i6 = HandwritingGestureApi34.a(b9.y(m), maVar);
                            }
                        } else if (b9.z(handwritingGesture)) {
                            RemoveSpaceGesture o = b9.o(handwritingGesture);
                            TextLayoutResultProxy d4 = legacyTextFieldState.d();
                            if (d4 != null) {
                                textLayoutResult = d4.a;
                            }
                            startPoint = o.getStartPoint();
                            long d5 = HandwritingGesture_androidKt.d(startPoint);
                            endPoint = o.getEndPoint();
                            long d6 = HandwritingGesture_androidKt.d(endPoint);
                            LayoutCoordinates c6 = legacyTextFieldState.c();
                            if (textLayoutResult != null) {
                                MultiParagraph multiParagraph = textLayoutResult.b;
                                if (c6 != null) {
                                    long R = c6.R(d5);
                                    long R2 = c6.R(d6);
                                    int e = HandwritingGesture_androidKt.e(multiParagraph, R, viewConfiguration);
                                    int e2 = HandwritingGesture_androidKt.e(multiParagraph, R2, viewConfiguration);
                                    if (e == -1) {
                                        if (e2 == -1) {
                                            j = TextRange.b;
                                            c = ' ';
                                            if (TextRange.c(j)) {
                                                i6 = HandwritingGestureApi34.a(b9.l(o), maVar);
                                            } else {
                                                ?? obj = new Object();
                                                obj.j = -1;
                                                ?? obj2 = new Object();
                                                obj2.j = -1;
                                                String e3 = new Regex("\\s+").e(annotatedString.subSequence(TextRange.f(j), TextRange.e(j)).k, new b(16, obj, obj2));
                                                int i9 = obj.j;
                                                if (i9 != -1 && (i = obj2.j) != -1) {
                                                    int i10 = (int) (j >> c);
                                                    maVar.b(new HandwritingGesture_androidKt$compoundEditCommand$1(new EditCommand[]{new SetSelectionCommand(i10 + i9, i10 + i), new CommitTextCommand(e3.substring(i9, e3.length() - (TextRange.d(j) - obj2.j)), 1)}));
                                                    i6 = 1;
                                                } else {
                                                    i6 = HandwritingGestureApi34.a(b9.l(o), maVar);
                                                }
                                            }
                                        }
                                    } else {
                                        if (e2 != -1) {
                                            e = Math.min(e, e2);
                                        }
                                        e2 = e;
                                    }
                                    float b3 = (multiParagraph.b(e2) + multiParagraph.f(e2)) / 2.0f;
                                    int i11 = (int) (R >> 32);
                                    int i12 = (int) (R2 >> 32);
                                    c = ' ';
                                    j = multiParagraph.h(new Rect(Math.min(Float.intBitsToFloat(i11), Float.intBitsToFloat(i12)), b3 - 0.1f, Math.max(Float.intBitsToFloat(i11), Float.intBitsToFloat(i12)), b3 + 0.1f), 0, TextInclusionStrategy.Companion.a);
                                    if (TextRange.c(j)) {
                                    }
                                }
                            }
                            c = ' ';
                            j = TextRange.b;
                            if (TextRange.c(j)) {
                            }
                        } else {
                            i6 = 2;
                        }
                    }
                }
            }
            if (intConsumer != null) {
                if (executor != null) {
                    executor.execute(new w2(i6, 0, intConsumer));
                } else {
                    intConsumer.accept(i6);
                }
            }
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z = this.k;
        if (z) {
            return true;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean previewHandwritingGesture(PreviewableHandwritingGesture previewableHandwritingGesture, CancellationSignal cancellationSignal) {
        LegacyTextFieldState legacyTextFieldState;
        AnnotatedString annotatedString;
        AnnotatedString annotatedString2;
        RectF deletionStartArea;
        RectF deletionEndArea;
        int granularity;
        int i;
        RectF selectionStartArea;
        RectF selectionEndArea;
        int granularity2;
        int i2;
        RectF deletionArea;
        int granularity3;
        int i3;
        RectF selectionArea;
        int granularity4;
        int i4;
        TextLayoutInput textLayoutInput;
        if (Build.VERSION.SDK_INT >= 34 && (legacyTextFieldState = this.c) != null && (annotatedString = legacyTextFieldState.j) != null) {
            TextLayoutResultProxy d = legacyTextFieldState.d();
            if (d != null && (textLayoutInput = d.a.a) != null) {
                annotatedString2 = textLayoutInput.a;
            } else {
                annotatedString2 = null;
            }
            if (annotatedString.equals(annotatedString2)) {
                boolean t = d1.t(previewableHandwritingGesture);
                int i5 = 1;
                TextFieldSelectionManager textFieldSelectionManager = this.d;
                if (t) {
                    SelectGesture p = b9.p(previewableHandwritingGesture);
                    if (textFieldSelectionManager != null) {
                        selectionArea = p.getSelectionArea();
                        Rect c = RectHelper_androidKt.c(selectionArea);
                        granularity4 = p.getGranularity();
                        if (granularity4 != 1) {
                            i4 = 0;
                        } else {
                            i4 = 1;
                        }
                        long f = HandwritingGesture_androidKt.f(legacyTextFieldState, c, i4);
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.d;
                        if (legacyTextFieldState2 != null) {
                            legacyTextFieldState2.f(f);
                        }
                        LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.d;
                        if (legacyTextFieldState3 != null) {
                            legacyTextFieldState3.e(TextRange.b);
                        }
                        if (!TextRange.c(f)) {
                            textFieldSelectionManager.u(false);
                            textFieldSelectionManager.r(HandleState.j);
                        }
                    }
                } else if (b9.B(previewableHandwritingGesture)) {
                    DeleteGesture j = b9.j(previewableHandwritingGesture);
                    if (textFieldSelectionManager != null) {
                        deletionArea = j.getDeletionArea();
                        Rect c2 = RectHelper_androidKt.c(deletionArea);
                        granularity3 = j.getGranularity();
                        if (granularity3 != 1) {
                            i3 = 0;
                        } else {
                            i3 = 1;
                        }
                        long f2 = HandwritingGesture_androidKt.f(legacyTextFieldState, c2, i3);
                        LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.d;
                        if (legacyTextFieldState4 != null) {
                            legacyTextFieldState4.e(f2);
                        }
                        LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.d;
                        if (legacyTextFieldState5 != null) {
                            legacyTextFieldState5.f(TextRange.b);
                        }
                        if (!TextRange.c(f2)) {
                            textFieldSelectionManager.u(false);
                            textFieldSelectionManager.r(HandleState.j);
                        }
                    }
                } else if (b9.C(previewableHandwritingGesture)) {
                    SelectRangeGesture q = b9.q(previewableHandwritingGesture);
                    if (textFieldSelectionManager != null) {
                        selectionStartArea = q.getSelectionStartArea();
                        Rect c3 = RectHelper_androidKt.c(selectionStartArea);
                        selectionEndArea = q.getSelectionEndArea();
                        Rect c4 = RectHelper_androidKt.c(selectionEndArea);
                        granularity2 = q.getGranularity();
                        if (granularity2 != 1) {
                            i2 = 0;
                        } else {
                            i2 = 1;
                        }
                        long b = HandwritingGesture_androidKt.b(legacyTextFieldState, c3, c4, i2);
                        LegacyTextFieldState legacyTextFieldState6 = textFieldSelectionManager.d;
                        if (legacyTextFieldState6 != null) {
                            legacyTextFieldState6.f(b);
                        }
                        LegacyTextFieldState legacyTextFieldState7 = textFieldSelectionManager.d;
                        if (legacyTextFieldState7 != null) {
                            legacyTextFieldState7.e(TextRange.b);
                        }
                        if (!TextRange.c(b)) {
                            textFieldSelectionManager.u(false);
                            textFieldSelectionManager.r(HandleState.j);
                        }
                    }
                } else if (b9.D(previewableHandwritingGesture)) {
                    DeleteRangeGesture k = b9.k(previewableHandwritingGesture);
                    if (textFieldSelectionManager != null) {
                        deletionStartArea = k.getDeletionStartArea();
                        Rect c5 = RectHelper_androidKt.c(deletionStartArea);
                        deletionEndArea = k.getDeletionEndArea();
                        Rect c6 = RectHelper_androidKt.c(deletionEndArea);
                        granularity = k.getGranularity();
                        if (granularity != 1) {
                            i = 0;
                        } else {
                            i = 1;
                        }
                        long b2 = HandwritingGesture_androidKt.b(legacyTextFieldState, c5, c6, i);
                        LegacyTextFieldState legacyTextFieldState8 = textFieldSelectionManager.d;
                        if (legacyTextFieldState8 != null) {
                            legacyTextFieldState8.e(b2);
                        }
                        LegacyTextFieldState legacyTextFieldState9 = textFieldSelectionManager.d;
                        if (legacyTextFieldState9 != null) {
                            legacyTextFieldState9.f(TextRange.b);
                        }
                        if (!TextRange.c(b2)) {
                            textFieldSelectionManager.u(false);
                            textFieldSelectionManager.r(HandleState.j);
                        }
                    }
                }
                if (cancellationSignal != null) {
                    cancellationSignal.setOnCancelListener(new h6(i5, textFieldSelectionManager));
                }
                return true;
            }
        }
        return false;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean reportFullscreenMode(boolean z) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.view.inputmethod.InputConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean requestCursorUpdates(int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        LegacyCursorAnchorInfoController legacyCursorAnchorInfoController;
        boolean z6;
        boolean z7 = this.k;
        if (z7) {
            boolean z8 = false;
            if ((i & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 33) {
                if ((i & 16) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if ((i & 8) != 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if ((i & 4) != 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (i2 >= 34 && (i & 32) != 0) {
                    z8 = true;
                }
                if (!z4 && !z5 && !z6 && !z8) {
                    if (i2 >= 34) {
                        z3 = true;
                        z8 = true;
                    } else {
                        z3 = z8;
                        z8 = true;
                    }
                    z4 = z8;
                } else {
                    z3 = z8;
                    z8 = z6;
                    legacyCursorAnchorInfoController = this.a.a.m;
                    synchronized (legacyCursorAnchorInfoController.c) {
                        try {
                            legacyCursorAnchorInfoController.f = z4;
                            legacyCursorAnchorInfoController.g = z5;
                            legacyCursorAnchorInfoController.h = z8;
                            legacyCursorAnchorInfoController.i = z3;
                            if (z) {
                                legacyCursorAnchorInfoController.e = true;
                                if (legacyCursorAnchorInfoController.j != null) {
                                    legacyCursorAnchorInfoController.a();
                                }
                            }
                            legacyCursorAnchorInfoController.d = z2;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return true;
                }
            } else {
                z3 = false;
                z4 = true;
            }
            z5 = z4;
            legacyCursorAnchorInfoController = this.a.a.m;
            synchronized (legacyCursorAnchorInfoController.c) {
            }
        } else {
            return z7;
        }
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean sendKeyEvent(KeyEvent keyEvent) {
        boolean z = this.k;
        if (z) {
            ((BaseInputConnection) this.a.a.k.getValue()).sendKeyEvent(keyEvent);
            return true;
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingRegion(int i, int i2) {
        boolean z = this.k;
        if (z) {
            b(new SetComposingRegionCommand(i, i2));
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setComposingText(CharSequence charSequence, int i) {
        boolean z = this.k;
        if (z) {
            b(new SetComposingTextCommand(String.valueOf(charSequence), i));
        }
        return z;
    }

    @Override // android.view.inputmethod.InputConnection
    public final boolean setSelection(int i, int i2) {
        boolean z = this.k;
        if (z) {
            b(new SetSelectionCommand(i, i2));
            return true;
        }
        return z;
    }
}
