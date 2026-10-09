package androidx.compose.foundation.text;

import android.view.KeyCharacterMap;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k8;
import defpackage.qg;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class TextFieldKeyInputKt$textFieldKeyInput$2$1$1 extends FunctionReferenceImpl implements Function1<KeyEvent, Boolean> {
    /* JADX WARN: Removed duplicated region for block: B:12:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x028e  */
    /* JADX WARN: Type inference failed for: r15v4, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj) {
        CommitTextCommand commitTextCommand;
        final KeyCommand keyCommand;
        TextFieldValue textFieldValue;
        boolean b;
        AnnotatedString annotatedString;
        UndoManager undoManager;
        Integer valueOf;
        android.view.KeyEvent keyEvent = ((KeyEvent) obj).a;
        final TextFieldKeyInput textFieldKeyInput = (TextFieldKeyInput) this.k;
        TextPreparedSelectionState textPreparedSelectionState = textFieldKeyInput.f;
        boolean z = textFieldKeyInput.d;
        boolean z2 = true;
        KeyCommand keyCommand2 = null;
        if (keyEvent.getAction() == 0 && !Character.isISOControl(keyEvent.getUnicodeChar())) {
            DeadKeyCombiner deadKeyCombiner = textFieldKeyInput.i;
            deadKeyCombiner.getClass();
            int unicodeChar = keyEvent.getUnicodeChar();
            if ((Integer.MIN_VALUE & unicodeChar) != 0) {
                deadKeyCombiner.a = Integer.valueOf(unicodeChar & Integer.MAX_VALUE);
                valueOf = null;
            } else {
                Integer num = deadKeyCombiner.a;
                if (num != null) {
                    deadKeyCombiner.a = null;
                    int deadChar = KeyCharacterMap.getDeadChar(num.intValue(), unicodeChar);
                    Integer valueOf2 = Integer.valueOf(deadChar);
                    if (deadChar == 0) {
                        valueOf2 = null;
                    }
                    if (valueOf2 != null) {
                        unicodeChar = valueOf2.intValue();
                    }
                    valueOf = Integer.valueOf(unicodeChar);
                } else {
                    valueOf = Integer.valueOf(unicodeChar);
                }
            }
            if (valueOf != null) {
                commitTextCommand = new CommitTextCommand(new StringBuilder().appendCodePoint(valueOf.intValue()).toString(), 1);
                if (commitTextCommand == null) {
                    if (z) {
                        textFieldKeyInput.a(CollectionsKt.B(commitTextCommand));
                        textPreparedSelectionState.a = null;
                    }
                    z2 = false;
                } else {
                    if (KeyEvent_androidKt.b(keyEvent) == 2) {
                        textFieldKeyInput.j.getClass();
                        int a = KeyModifiersKt.a(keyEvent);
                        if (a == 9) {
                            long a2 = Key_androidKt.a(keyEvent.getKeyCode());
                            if (Key.a(a2, Key.f)) {
                                keyCommand = KeyCommand.Z;
                            } else if (Key.a(a2, Key.g)) {
                                keyCommand = KeyCommand.a0;
                            } else if (Key.a(a2, Key.d)) {
                                keyCommand = KeyCommand.R;
                            } else {
                                if (Key.a(a2, Key.e)) {
                                    keyCommand = KeyCommand.S;
                                }
                                keyCommand = null;
                            }
                            if (keyCommand == null) {
                                int a3 = KeyModifiersKt.a(keyEvent);
                                long a4 = Key_androidKt.a(keyEvent.getKeyCode());
                                if (Key.a(a4, Key.s)) {
                                    if (a3 == 0 || a3 == 8 || a3 == 12) {
                                        keyCommand = KeyCommand.E;
                                    } else {
                                        if (a3 == 2 || a3 == 10) {
                                            keyCommand = KeyCommand.G;
                                        }
                                        keyCommand = null;
                                    }
                                    if (keyCommand == null) {
                                        int a5 = KeyModifiersKt.a(keyEvent);
                                        if (a5 == 10) {
                                            long a6 = Key_androidKt.a(keyEvent.getKeyCode());
                                            if (!Key.a(a6, Key.f) && !Key.a(a6, Key.H)) {
                                                if (!Key.a(a6, Key.g) && !Key.a(a6, Key.I)) {
                                                    if (!Key.a(a6, Key.d) && !Key.a(a6, Key.F)) {
                                                        if (Key.a(a6, Key.e) || Key.a(a6, Key.G)) {
                                                            keyCommand = KeyCommand.V;
                                                        }
                                                        keyCommand = null;
                                                    } else {
                                                        keyCommand = KeyCommand.W;
                                                    }
                                                } else {
                                                    keyCommand = KeyCommand.U;
                                                }
                                            } else {
                                                keyCommand = KeyCommand.T;
                                            }
                                            if (keyCommand == null) {
                                                KeyMappingKt$commonKeyMapping$1 keyMappingKt$commonKeyMapping$1 = KeyMappingKt.a.a;
                                                int a7 = KeyModifiersKt.a(keyEvent);
                                                if (a7 == 10) {
                                                    if (Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.o)) {
                                                        keyCommand2 = KeyCommand.f0;
                                                    }
                                                } else if (a7 == 2) {
                                                    long a8 = Key_androidKt.a(keyEvent.getKeyCode());
                                                    if (!Key.a(a8, Key.j) && !Key.a(a8, Key.x) && !Key.a(a8, Key.N)) {
                                                        if (Key.a(a8, Key.l)) {
                                                            keyCommand2 = KeyCommand.C;
                                                        } else if (Key.a(a8, Key.m)) {
                                                            keyCommand2 = KeyCommand.D;
                                                        } else if (Key.a(a8, Key.i)) {
                                                            keyCommand2 = KeyCommand.K;
                                                        } else if (Key.a(a8, Key.n)) {
                                                            keyCommand2 = KeyCommand.f0;
                                                        } else if (Key.a(a8, Key.o)) {
                                                            keyCommand2 = KeyCommand.e0;
                                                        }
                                                    } else {
                                                        keyCommand2 = KeyCommand.B;
                                                    }
                                                } else if (a7 == 8) {
                                                    long a9 = Key_androidKt.a(keyEvent.getKeyCode());
                                                    if (!Key.a(a9, Key.f) && !Key.a(a9, Key.H)) {
                                                        if (!Key.a(a9, Key.g) && !Key.a(a9, Key.I)) {
                                                            if (!Key.a(a9, Key.d) && !Key.a(a9, Key.F)) {
                                                                if (!Key.a(a9, Key.e) && !Key.a(a9, Key.G)) {
                                                                    if (!Key.a(a9, Key.C) && !Key.a(a9, Key.L)) {
                                                                        if (!Key.a(a9, Key.D) && !Key.a(a9, Key.M)) {
                                                                            if (!Key.a(a9, Key.v) && !Key.a(a9, Key.J)) {
                                                                                if (!Key.a(a9, Key.w) && !Key.a(a9, Key.K)) {
                                                                                    if (Key.a(a9, Key.x) || Key.a(a9, Key.N)) {
                                                                                        keyCommand2 = KeyCommand.C;
                                                                                    }
                                                                                } else {
                                                                                    keyCommand2 = KeyCommand.Y;
                                                                                }
                                                                            } else {
                                                                                keyCommand2 = KeyCommand.X;
                                                                            }
                                                                        } else {
                                                                            keyCommand2 = KeyCommand.Q;
                                                                        }
                                                                    } else {
                                                                        keyCommand2 = KeyCommand.P;
                                                                    }
                                                                } else {
                                                                    keyCommand2 = KeyCommand.O;
                                                                }
                                                            } else {
                                                                keyCommand2 = KeyCommand.N;
                                                            }
                                                        } else {
                                                            keyCommand2 = KeyCommand.M;
                                                        }
                                                    } else {
                                                        keyCommand2 = KeyCommand.L;
                                                    }
                                                } else if (a7 == 0) {
                                                    long a10 = Key_androidKt.a(keyEvent.getKeyCode());
                                                    if (!Key.a(a10, Key.f) && !Key.a(a10, Key.H)) {
                                                        if (!Key.a(a10, Key.g) && !Key.a(a10, Key.I)) {
                                                            if (!Key.a(a10, Key.d) && !Key.a(a10, Key.F)) {
                                                                if (!Key.a(a10, Key.e) && !Key.a(a10, Key.G)) {
                                                                    if (Key.a(a10, Key.h)) {
                                                                        keyCommand2 = KeyCommand.w;
                                                                    } else if (!Key.a(a10, Key.C) && !Key.a(a10, Key.L)) {
                                                                        if (!Key.a(a10, Key.D) && !Key.a(a10, Key.M)) {
                                                                            if (!Key.a(a10, Key.v) && !Key.a(a10, Key.J)) {
                                                                                if (!Key.a(a10, Key.w) && !Key.a(a10, Key.K)) {
                                                                                    if (!Key.a(a10, Key.r) && !Key.a(a10, Key.E)) {
                                                                                        if (Key.a(a10, Key.s)) {
                                                                                            keyCommand2 = KeyCommand.E;
                                                                                        } else if (Key.a(a10, Key.t)) {
                                                                                            keyCommand2 = KeyCommand.F;
                                                                                        } else if (Key.a(a10, Key.A)) {
                                                                                            keyCommand2 = KeyCommand.C;
                                                                                        } else if (Key.a(a10, Key.y)) {
                                                                                            keyCommand2 = KeyCommand.D;
                                                                                        } else if (Key.a(a10, Key.z)) {
                                                                                            keyCommand2 = KeyCommand.B;
                                                                                        } else if (Key.a(a10, Key.p)) {
                                                                                            keyCommand2 = KeyCommand.d0;
                                                                                        }
                                                                                    } else {
                                                                                        keyCommand2 = KeyCommand.c0;
                                                                                    }
                                                                                } else {
                                                                                    keyCommand2 = KeyCommand.r;
                                                                                }
                                                                            } else {
                                                                                keyCommand2 = KeyCommand.q;
                                                                            }
                                                                        } else {
                                                                            keyCommand2 = KeyCommand.y;
                                                                        }
                                                                    } else {
                                                                        keyCommand2 = KeyCommand.x;
                                                                    }
                                                                } else {
                                                                    keyCommand2 = KeyCommand.v;
                                                                }
                                                            } else {
                                                                keyCommand2 = KeyCommand.u;
                                                            }
                                                        } else {
                                                            keyCommand2 = KeyCommand.l;
                                                        }
                                                    } else {
                                                        keyCommand2 = KeyCommand.k;
                                                    }
                                                }
                                                keyCommand = keyCommand2;
                                            }
                                        } else if (a5 == 2) {
                                            long a11 = Key_androidKt.a(keyEvent.getKeyCode());
                                            if (!Key.a(a11, Key.f) && !Key.a(a11, Key.H)) {
                                                if (!Key.a(a11, Key.g) && !Key.a(a11, Key.I)) {
                                                    if (!Key.a(a11, Key.d) && !Key.a(a11, Key.F)) {
                                                        if (!Key.a(a11, Key.e) && !Key.a(a11, Key.G)) {
                                                            if (Key.a(a11, Key.k)) {
                                                                keyCommand = KeyCommand.E;
                                                            } else if (Key.a(a11, Key.t)) {
                                                                keyCommand = KeyCommand.H;
                                                            } else {
                                                                if (Key.a(a11, Key.B)) {
                                                                    keyCommand = KeyCommand.b0;
                                                                }
                                                                keyCommand = null;
                                                            }
                                                        } else {
                                                            keyCommand = KeyCommand.o;
                                                        }
                                                    } else {
                                                        keyCommand = KeyCommand.p;
                                                    }
                                                } else {
                                                    keyCommand = KeyCommand.m;
                                                }
                                            } else {
                                                keyCommand = KeyCommand.n;
                                            }
                                            if (keyCommand == null) {
                                            }
                                        } else if (a5 == 8) {
                                            long a12 = Key_androidKt.a(keyEvent.getKeyCode());
                                            if (!Key.a(a12, Key.v) && !Key.a(a12, Key.J)) {
                                                if (Key.a(a12, Key.w) || Key.a(a12, Key.K)) {
                                                    keyCommand = KeyCommand.Y;
                                                }
                                                keyCommand = null;
                                            } else {
                                                keyCommand = KeyCommand.X;
                                            }
                                            if (keyCommand == null) {
                                            }
                                        } else {
                                            if (a5 == 1 && Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.t)) {
                                                keyCommand = KeyCommand.J;
                                                if (keyCommand == null) {
                                                }
                                            }
                                            keyCommand = null;
                                            if (keyCommand == null) {
                                            }
                                        }
                                    }
                                } else {
                                    if ((Key.a(a4, Key.r) || Key.a(a4, Key.E)) && (a3 == 0 || a3 == 8 || a3 == 2 || a3 == 10)) {
                                        keyCommand = KeyCommand.c0;
                                        if (keyCommand == null) {
                                        }
                                    }
                                    keyCommand = null;
                                    if (keyCommand == null) {
                                    }
                                }
                            }
                            if (keyCommand != null && (!keyCommand.j || z)) {
                                final ?? obj2 = new Object();
                                obj2.j = true;
                                Function1 function1 = new Function1() { // from class: androidx.compose.foundation.text.i
                                    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj3) {
                                        Integer d;
                                        Integer c;
                                        Integer c2;
                                        Integer d2;
                                        TextLayoutResult textLayoutResult;
                                        TextLayoutResult textLayoutResult2;
                                        TextLayoutResultProxy textLayoutResultProxy;
                                        TextLayoutResultProxy textLayoutResultProxy2;
                                        TextLayoutResult textLayoutResult3;
                                        TextLayoutResult textLayoutResult4;
                                        TextLayoutResultProxy textLayoutResultProxy3;
                                        TextLayoutResultProxy textLayoutResultProxy4;
                                        Integer c3;
                                        Integer d3;
                                        Integer d4;
                                        Integer c4;
                                        UndoManager.Entry entry;
                                        TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj3;
                                        int ordinal = KeyCommand.this.ordinal();
                                        TextFieldKeyInput textFieldKeyInput2 = textFieldKeyInput;
                                        Ref$BooleanRef ref$BooleanRef = obj2;
                                        Unit unit = Unit.a;
                                        TextFieldValue textFieldValue2 = null;
                                        switch (ordinal) {
                                            case 0:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    if (TextRange.c(textFieldPreparedSelection.f)) {
                                                        textFieldPreparedSelection.g();
                                                        return unit;
                                                    }
                                                    boolean e = textFieldPreparedSelection.e();
                                                    long j = textFieldPreparedSelection.f;
                                                    if (e) {
                                                        int f = TextRange.f(j);
                                                        textFieldPreparedSelection.o(f, f);
                                                        return unit;
                                                    }
                                                    int e2 = TextRange.e(j);
                                                    textFieldPreparedSelection.o(e2, e2);
                                                }
                                                return unit;
                                            case 1:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    if (TextRange.c(textFieldPreparedSelection.f)) {
                                                        textFieldPreparedSelection.k();
                                                        return unit;
                                                    }
                                                    boolean e3 = textFieldPreparedSelection.e();
                                                    long j2 = textFieldPreparedSelection.f;
                                                    if (e3) {
                                                        int e4 = TextRange.e(j2);
                                                        textFieldPreparedSelection.o(e4, e4);
                                                        return unit;
                                                    }
                                                    int f2 = TextRange.f(j2);
                                                    textFieldPreparedSelection.o(f2, f2);
                                                    return unit;
                                                }
                                                return unit;
                                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                TextPreparedSelectionState textPreparedSelectionState2 = textFieldPreparedSelection.e;
                                                textPreparedSelectionState2.a = null;
                                                AnnotatedString annotatedString2 = textFieldPreparedSelection.g;
                                                String str = annotatedString2.k;
                                                String str2 = annotatedString2.k;
                                                if (str.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textPreparedSelectionState2.a = null;
                                                        if (str2.length() > 0 && (c = textFieldPreparedSelection.c()) != null) {
                                                            int intValue = c.intValue();
                                                            textFieldPreparedSelection.o(intValue, intValue);
                                                            return unit;
                                                        }
                                                    } else {
                                                        textPreparedSelectionState2.a = null;
                                                        if (str2.length() > 0 && (d = textFieldPreparedSelection.d()) != null) {
                                                            int intValue2 = d.intValue();
                                                            textFieldPreparedSelection.o(intValue2, intValue2);
                                                            return unit;
                                                        }
                                                    }
                                                }
                                                return unit;
                                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                TextPreparedSelectionState textPreparedSelectionState3 = textFieldPreparedSelection.e;
                                                textPreparedSelectionState3.a = null;
                                                AnnotatedString annotatedString3 = textFieldPreparedSelection.g;
                                                String str3 = annotatedString3.k;
                                                String str4 = annotatedString3.k;
                                                if (str3.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textPreparedSelectionState3.a = null;
                                                        if (str4.length() > 0 && (d2 = textFieldPreparedSelection.d()) != null) {
                                                            int intValue3 = d2.intValue();
                                                            textFieldPreparedSelection.o(intValue3, intValue3);
                                                            return unit;
                                                        }
                                                    } else {
                                                        textPreparedSelectionState3.a = null;
                                                        if (str4.length() > 0 && (c2 = textFieldPreparedSelection.c()) != null) {
                                                            int intValue4 = c2.intValue();
                                                            textFieldPreparedSelection.o(intValue4, intValue4);
                                                            return unit;
                                                        }
                                                    }
                                                }
                                                return unit;
                                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                textFieldPreparedSelection.h();
                                                return unit;
                                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                textFieldPreparedSelection.j();
                                                return unit;
                                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                textFieldPreparedSelection.m();
                                                return unit;
                                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                                textFieldPreparedSelection.l();
                                                return unit;
                                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textFieldPreparedSelection.m();
                                                        return unit;
                                                    }
                                                    textFieldPreparedSelection.l();
                                                    return unit;
                                                }
                                                return unit;
                                            case KeyModifiers.a /* 9 */:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textFieldPreparedSelection.l();
                                                        return unit;
                                                    }
                                                    textFieldPreparedSelection.m();
                                                    return unit;
                                                }
                                                return unit;
                                            case KeyModifiers.b /* 10 */:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResult = textFieldPreparedSelection.c) != null) {
                                                    int f3 = textFieldPreparedSelection.f(textLayoutResult, -1);
                                                    textFieldPreparedSelection.o(f3, f3);
                                                    return unit;
                                                }
                                                return unit;
                                            case 11:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResult2 = textFieldPreparedSelection.c) != null) {
                                                    int f4 = textFieldPreparedSelection.f(textLayoutResult2, 1);
                                                    textFieldPreparedSelection.o(f4, f4);
                                                    return unit;
                                                }
                                                return unit;
                                            case KeyModifiers.c /* 12 */:
                                            case 48:
                                                return unit;
                                            case 13:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResultProxy = textFieldPreparedSelection.i) != null) {
                                                    int r = textFieldPreparedSelection.r(textLayoutResultProxy, -1);
                                                    textFieldPreparedSelection.o(r, r);
                                                    return unit;
                                                }
                                                return unit;
                                            case 14:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResultProxy2 = textFieldPreparedSelection.i) != null) {
                                                    int r2 = textFieldPreparedSelection.r(textLayoutResultProxy2, 1);
                                                    textFieldPreparedSelection.o(r2, r2);
                                                    return unit;
                                                }
                                                return unit;
                                            case 15:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    textFieldPreparedSelection.o(0, 0);
                                                    return unit;
                                                }
                                                return unit;
                                            case 16:
                                                textFieldPreparedSelection.e.a = null;
                                                AnnotatedString annotatedString4 = textFieldPreparedSelection.g;
                                                if (annotatedString4.k.length() > 0) {
                                                    int length = annotatedString4.k.length();
                                                    textFieldPreparedSelection.o(length, length);
                                                    return unit;
                                                }
                                                return unit;
                                            case 17:
                                                textFieldKeyInput2.b.d(false);
                                                return unit;
                                            case 18:
                                                textFieldKeyInput2.b.q();
                                                return unit;
                                            case 19:
                                                textFieldKeyInput2.b.f();
                                                return unit;
                                            case 20:
                                                List q = textFieldPreparedSelection.q(new qg(2));
                                                if (q != null) {
                                                    textFieldKeyInput2.a(q);
                                                    return unit;
                                                }
                                                return unit;
                                            case 21:
                                                List q2 = textFieldPreparedSelection.q(new qg(3));
                                                if (q2 != null) {
                                                    textFieldKeyInput2.a(q2);
                                                    return unit;
                                                }
                                                return unit;
                                            case 22:
                                                List q3 = textFieldPreparedSelection.q(new qg(4));
                                                if (q3 != null) {
                                                    textFieldKeyInput2.a(q3);
                                                    return unit;
                                                }
                                                return unit;
                                            case 23:
                                                List q4 = textFieldPreparedSelection.q(new qg(5));
                                                if (q4 != null) {
                                                    textFieldKeyInput2.a(q4);
                                                    return unit;
                                                }
                                                return unit;
                                            case 24:
                                                List q5 = textFieldPreparedSelection.q(new qg(6));
                                                if (q5 != null) {
                                                    textFieldKeyInput2.a(q5);
                                                    return unit;
                                                }
                                                return unit;
                                            case 25:
                                                List q6 = textFieldPreparedSelection.q(new qg(7));
                                                if (q6 != null) {
                                                    textFieldKeyInput2.a(q6);
                                                    return unit;
                                                }
                                                return unit;
                                            case 26:
                                                textFieldPreparedSelection.e.a = null;
                                                AnnotatedString annotatedString5 = textFieldPreparedSelection.g;
                                                if (annotatedString5.k.length() > 0) {
                                                    textFieldPreparedSelection.o(0, annotatedString5.k.length());
                                                    return unit;
                                                }
                                                return unit;
                                            case 27:
                                                textFieldPreparedSelection.g();
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 28:
                                                textFieldPreparedSelection.k();
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 29:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResult3 = textFieldPreparedSelection.c) != null) {
                                                    int f5 = textFieldPreparedSelection.f(textLayoutResult3, -1);
                                                    textFieldPreparedSelection.o(f5, f5);
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 30:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResult4 = textFieldPreparedSelection.c) != null) {
                                                    int f6 = textFieldPreparedSelection.f(textLayoutResult4, 1);
                                                    textFieldPreparedSelection.o(f6, f6);
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 31:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResultProxy3 = textFieldPreparedSelection.i) != null) {
                                                    int r3 = textFieldPreparedSelection.r(textLayoutResultProxy3, -1);
                                                    textFieldPreparedSelection.o(r3, r3);
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 32:
                                                if (textFieldPreparedSelection.g.k.length() > 0 && (textLayoutResultProxy4 = textFieldPreparedSelection.i) != null) {
                                                    int r4 = textFieldPreparedSelection.r(textLayoutResultProxy4, 1);
                                                    textFieldPreparedSelection.o(r4, r4);
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 33:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    textFieldPreparedSelection.o(0, 0);
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 34:
                                                textFieldPreparedSelection.e.a = null;
                                                AnnotatedString annotatedString6 = textFieldPreparedSelection.g;
                                                if (annotatedString6.k.length() > 0) {
                                                    int length2 = annotatedString6.k.length();
                                                    textFieldPreparedSelection.o(length2, length2);
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 35:
                                                TextPreparedSelectionState textPreparedSelectionState4 = textFieldPreparedSelection.e;
                                                textPreparedSelectionState4.a = null;
                                                AnnotatedString annotatedString7 = textFieldPreparedSelection.g;
                                                String str5 = annotatedString7.k;
                                                String str6 = annotatedString7.k;
                                                if (str5.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textPreparedSelectionState4.a = null;
                                                        if (str6.length() > 0 && (d3 = textFieldPreparedSelection.d()) != null) {
                                                            int intValue5 = d3.intValue();
                                                            textFieldPreparedSelection.o(intValue5, intValue5);
                                                        }
                                                    } else {
                                                        textPreparedSelectionState4.a = null;
                                                        if (str6.length() > 0 && (c3 = textFieldPreparedSelection.c()) != null) {
                                                            int intValue6 = c3.intValue();
                                                            textFieldPreparedSelection.o(intValue6, intValue6);
                                                        }
                                                    }
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 36:
                                                TextPreparedSelectionState textPreparedSelectionState5 = textFieldPreparedSelection.e;
                                                textPreparedSelectionState5.a = null;
                                                AnnotatedString annotatedString8 = textFieldPreparedSelection.g;
                                                String str7 = annotatedString8.k;
                                                String str8 = annotatedString8.k;
                                                if (str7.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textPreparedSelectionState5.a = null;
                                                        if (str8.length() > 0 && (c4 = textFieldPreparedSelection.c()) != null) {
                                                            int intValue7 = c4.intValue();
                                                            textFieldPreparedSelection.o(intValue7, intValue7);
                                                        }
                                                    } else {
                                                        textPreparedSelectionState5.a = null;
                                                        if (str8.length() > 0 && (d4 = textFieldPreparedSelection.d()) != null) {
                                                            int intValue8 = d4.intValue();
                                                            textFieldPreparedSelection.o(intValue8, intValue8);
                                                        }
                                                    }
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 37:
                                                textFieldPreparedSelection.h();
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 38:
                                                textFieldPreparedSelection.j();
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 39:
                                                textFieldPreparedSelection.m();
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 40:
                                                textFieldPreparedSelection.l();
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 41:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textFieldPreparedSelection.m();
                                                    } else {
                                                        textFieldPreparedSelection.l();
                                                    }
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 42:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    if (textFieldPreparedSelection.e()) {
                                                        textFieldPreparedSelection.l();
                                                    } else {
                                                        textFieldPreparedSelection.m();
                                                    }
                                                }
                                                textFieldPreparedSelection.n();
                                                return unit;
                                            case 43:
                                                textFieldPreparedSelection.e.a = null;
                                                if (textFieldPreparedSelection.g.k.length() > 0) {
                                                    long j3 = textFieldPreparedSelection.f;
                                                    int i = TextRange.c;
                                                    int i2 = (int) (j3 & 4294967295L);
                                                    textFieldPreparedSelection.o(i2, i2);
                                                    return unit;
                                                }
                                                return unit;
                                            case 44:
                                                if (!textFieldKeyInput2.e) {
                                                    textFieldKeyInput2.a(CollectionsKt.B(new CommitTextCommand("\n", 1)));
                                                    return unit;
                                                }
                                                ref$BooleanRef.j = ((Boolean) textFieldKeyInput2.a.x.b(new ImeAction(textFieldKeyInput2.l))).booleanValue();
                                                return unit;
                                            case 45:
                                                if (!textFieldKeyInput2.e) {
                                                    textFieldKeyInput2.a(CollectionsKt.B(new CommitTextCommand("\t", 1)));
                                                    return unit;
                                                }
                                                ref$BooleanRef.j = false;
                                                return unit;
                                            case 46:
                                                UndoManager undoManager2 = textFieldKeyInput2.h;
                                                if (undoManager2 != null) {
                                                    undoManager2.a(TextFieldValue.a(textFieldPreparedSelection.h, textFieldPreparedSelection.g, textFieldPreparedSelection.f, 4));
                                                }
                                                UndoManager undoManager3 = textFieldKeyInput2.h;
                                                if (undoManager3 != null) {
                                                    UndoManager.Entry entry2 = undoManager3.a;
                                                    if (entry2 != null && (entry = entry2.a) != null) {
                                                        undoManager3.a = entry;
                                                        undoManager3.c -= entry2.b.a.k.length();
                                                        undoManager3.b = new UndoManager.Entry(undoManager3.b, entry2.b);
                                                        textFieldValue2 = entry.b;
                                                    }
                                                    if (textFieldValue2 != null) {
                                                        textFieldKeyInput2.k.b(textFieldValue2);
                                                        return unit;
                                                    }
                                                }
                                                return unit;
                                            case 47:
                                                UndoManager undoManager4 = textFieldKeyInput2.h;
                                                if (undoManager4 != null) {
                                                    UndoManager.Entry entry3 = undoManager4.b;
                                                    if (entry3 != null) {
                                                        undoManager4.b = entry3.a;
                                                        TextFieldValue textFieldValue3 = entry3.b;
                                                        undoManager4.a = new UndoManager.Entry(undoManager4.a, textFieldValue3);
                                                        undoManager4.c = textFieldValue3.a.k.length() + undoManager4.c;
                                                        textFieldValue2 = entry3.b;
                                                    }
                                                    if (textFieldValue2 != null) {
                                                        textFieldKeyInput2.k.b(textFieldValue2);
                                                        return unit;
                                                    }
                                                }
                                                return unit;
                                            default:
                                                k8.e();
                                                return null;
                                        }
                                    }
                                };
                                textFieldValue = textFieldKeyInput.c;
                                TextFieldPreparedSelection textFieldPreparedSelection = new TextFieldPreparedSelection(textFieldValue, textFieldKeyInput.g, textFieldKeyInput.a.d(), textPreparedSelectionState);
                                function1.b(textFieldPreparedSelection);
                                b = TextRange.b(textFieldPreparedSelection.f, textFieldValue.b);
                                annotatedString = textFieldPreparedSelection.g;
                                if (b || !Intrinsics.a(annotatedString, textFieldValue.a)) {
                                    textFieldKeyInput.k.b(TextFieldValue.a(textFieldValue, annotatedString, textFieldPreparedSelection.f, 4));
                                }
                                undoManager = textFieldKeyInput.h;
                                if (undoManager != null) {
                                    undoManager.e = true;
                                }
                                z2 = obj2.j;
                            }
                        } else {
                            if (a == 1) {
                                long a13 = Key_androidKt.a(keyEvent.getKeyCode());
                                if (Key.a(a13, Key.f)) {
                                    keyCommand = KeyCommand.s;
                                } else if (Key.a(a13, Key.g)) {
                                    keyCommand = KeyCommand.t;
                                } else if (Key.a(a13, Key.d)) {
                                    keyCommand = KeyCommand.z;
                                } else if (Key.a(a13, Key.e)) {
                                    keyCommand = KeyCommand.A;
                                } else if (Key.a(a13, Key.s)) {
                                    keyCommand = KeyCommand.I;
                                }
                                if (keyCommand == null) {
                                }
                                if (keyCommand != null) {
                                    final Ref$BooleanRef obj22 = new Object();
                                    obj22.j = true;
                                    Function1 function12 = new Function1() { // from class: androidx.compose.foundation.text.i
                                        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object b(Object obj3) {
                                            Integer d;
                                            Integer c;
                                            Integer c2;
                                            Integer d2;
                                            TextLayoutResult textLayoutResult;
                                            TextLayoutResult textLayoutResult2;
                                            TextLayoutResultProxy textLayoutResultProxy;
                                            TextLayoutResultProxy textLayoutResultProxy2;
                                            TextLayoutResult textLayoutResult3;
                                            TextLayoutResult textLayoutResult4;
                                            TextLayoutResultProxy textLayoutResultProxy3;
                                            TextLayoutResultProxy textLayoutResultProxy4;
                                            Integer c3;
                                            Integer d3;
                                            Integer d4;
                                            Integer c4;
                                            UndoManager.Entry entry;
                                            TextFieldPreparedSelection textFieldPreparedSelection2 = (TextFieldPreparedSelection) obj3;
                                            int ordinal = KeyCommand.this.ordinal();
                                            TextFieldKeyInput textFieldKeyInput2 = textFieldKeyInput;
                                            Ref$BooleanRef ref$BooleanRef = obj22;
                                            Unit unit = Unit.a;
                                            TextFieldValue textFieldValue2 = null;
                                            switch (ordinal) {
                                                case 0:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        if (TextRange.c(textFieldPreparedSelection2.f)) {
                                                            textFieldPreparedSelection2.g();
                                                            return unit;
                                                        }
                                                        boolean e = textFieldPreparedSelection2.e();
                                                        long j = textFieldPreparedSelection2.f;
                                                        if (e) {
                                                            int f = TextRange.f(j);
                                                            textFieldPreparedSelection2.o(f, f);
                                                            return unit;
                                                        }
                                                        int e2 = TextRange.e(j);
                                                        textFieldPreparedSelection2.o(e2, e2);
                                                    }
                                                    return unit;
                                                case 1:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        if (TextRange.c(textFieldPreparedSelection2.f)) {
                                                            textFieldPreparedSelection2.k();
                                                            return unit;
                                                        }
                                                        boolean e3 = textFieldPreparedSelection2.e();
                                                        long j2 = textFieldPreparedSelection2.f;
                                                        if (e3) {
                                                            int e4 = TextRange.e(j2);
                                                            textFieldPreparedSelection2.o(e4, e4);
                                                            return unit;
                                                        }
                                                        int f2 = TextRange.f(j2);
                                                        textFieldPreparedSelection2.o(f2, f2);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                    TextPreparedSelectionState textPreparedSelectionState2 = textFieldPreparedSelection2.e;
                                                    textPreparedSelectionState2.a = null;
                                                    AnnotatedString annotatedString2 = textFieldPreparedSelection2.g;
                                                    String str = annotatedString2.k;
                                                    String str2 = annotatedString2.k;
                                                    if (str.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textPreparedSelectionState2.a = null;
                                                            if (str2.length() > 0 && (c = textFieldPreparedSelection2.c()) != null) {
                                                                int intValue = c.intValue();
                                                                textFieldPreparedSelection2.o(intValue, intValue);
                                                                return unit;
                                                            }
                                                        } else {
                                                            textPreparedSelectionState2.a = null;
                                                            if (str2.length() > 0 && (d = textFieldPreparedSelection2.d()) != null) {
                                                                int intValue2 = d.intValue();
                                                                textFieldPreparedSelection2.o(intValue2, intValue2);
                                                                return unit;
                                                            }
                                                        }
                                                    }
                                                    return unit;
                                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                    TextPreparedSelectionState textPreparedSelectionState3 = textFieldPreparedSelection2.e;
                                                    textPreparedSelectionState3.a = null;
                                                    AnnotatedString annotatedString3 = textFieldPreparedSelection2.g;
                                                    String str3 = annotatedString3.k;
                                                    String str4 = annotatedString3.k;
                                                    if (str3.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textPreparedSelectionState3.a = null;
                                                            if (str4.length() > 0 && (d2 = textFieldPreparedSelection2.d()) != null) {
                                                                int intValue3 = d2.intValue();
                                                                textFieldPreparedSelection2.o(intValue3, intValue3);
                                                                return unit;
                                                            }
                                                        } else {
                                                            textPreparedSelectionState3.a = null;
                                                            if (str4.length() > 0 && (c2 = textFieldPreparedSelection2.c()) != null) {
                                                                int intValue4 = c2.intValue();
                                                                textFieldPreparedSelection2.o(intValue4, intValue4);
                                                                return unit;
                                                            }
                                                        }
                                                    }
                                                    return unit;
                                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                    textFieldPreparedSelection2.h();
                                                    return unit;
                                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                    textFieldPreparedSelection2.j();
                                                    return unit;
                                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                    textFieldPreparedSelection2.m();
                                                    return unit;
                                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                                    textFieldPreparedSelection2.l();
                                                    return unit;
                                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textFieldPreparedSelection2.m();
                                                            return unit;
                                                        }
                                                        textFieldPreparedSelection2.l();
                                                        return unit;
                                                    }
                                                    return unit;
                                                case KeyModifiers.a /* 9 */:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textFieldPreparedSelection2.l();
                                                            return unit;
                                                        }
                                                        textFieldPreparedSelection2.m();
                                                        return unit;
                                                    }
                                                    return unit;
                                                case KeyModifiers.b /* 10 */:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResult = textFieldPreparedSelection2.c) != null) {
                                                        int f3 = textFieldPreparedSelection2.f(textLayoutResult, -1);
                                                        textFieldPreparedSelection2.o(f3, f3);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 11:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResult2 = textFieldPreparedSelection2.c) != null) {
                                                        int f4 = textFieldPreparedSelection2.f(textLayoutResult2, 1);
                                                        textFieldPreparedSelection2.o(f4, f4);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case KeyModifiers.c /* 12 */:
                                                case 48:
                                                    return unit;
                                                case 13:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResultProxy = textFieldPreparedSelection2.i) != null) {
                                                        int r = textFieldPreparedSelection2.r(textLayoutResultProxy, -1);
                                                        textFieldPreparedSelection2.o(r, r);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 14:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResultProxy2 = textFieldPreparedSelection2.i) != null) {
                                                        int r2 = textFieldPreparedSelection2.r(textLayoutResultProxy2, 1);
                                                        textFieldPreparedSelection2.o(r2, r2);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 15:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        textFieldPreparedSelection2.o(0, 0);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 16:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    AnnotatedString annotatedString4 = textFieldPreparedSelection2.g;
                                                    if (annotatedString4.k.length() > 0) {
                                                        int length = annotatedString4.k.length();
                                                        textFieldPreparedSelection2.o(length, length);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 17:
                                                    textFieldKeyInput2.b.d(false);
                                                    return unit;
                                                case 18:
                                                    textFieldKeyInput2.b.q();
                                                    return unit;
                                                case 19:
                                                    textFieldKeyInput2.b.f();
                                                    return unit;
                                                case 20:
                                                    List q = textFieldPreparedSelection2.q(new qg(2));
                                                    if (q != null) {
                                                        textFieldKeyInput2.a(q);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 21:
                                                    List q2 = textFieldPreparedSelection2.q(new qg(3));
                                                    if (q2 != null) {
                                                        textFieldKeyInput2.a(q2);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 22:
                                                    List q3 = textFieldPreparedSelection2.q(new qg(4));
                                                    if (q3 != null) {
                                                        textFieldKeyInput2.a(q3);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 23:
                                                    List q4 = textFieldPreparedSelection2.q(new qg(5));
                                                    if (q4 != null) {
                                                        textFieldKeyInput2.a(q4);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 24:
                                                    List q5 = textFieldPreparedSelection2.q(new qg(6));
                                                    if (q5 != null) {
                                                        textFieldKeyInput2.a(q5);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 25:
                                                    List q6 = textFieldPreparedSelection2.q(new qg(7));
                                                    if (q6 != null) {
                                                        textFieldKeyInput2.a(q6);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 26:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    AnnotatedString annotatedString5 = textFieldPreparedSelection2.g;
                                                    if (annotatedString5.k.length() > 0) {
                                                        textFieldPreparedSelection2.o(0, annotatedString5.k.length());
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 27:
                                                    textFieldPreparedSelection2.g();
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 28:
                                                    textFieldPreparedSelection2.k();
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 29:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResult3 = textFieldPreparedSelection2.c) != null) {
                                                        int f5 = textFieldPreparedSelection2.f(textLayoutResult3, -1);
                                                        textFieldPreparedSelection2.o(f5, f5);
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 30:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResult4 = textFieldPreparedSelection2.c) != null) {
                                                        int f6 = textFieldPreparedSelection2.f(textLayoutResult4, 1);
                                                        textFieldPreparedSelection2.o(f6, f6);
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 31:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResultProxy3 = textFieldPreparedSelection2.i) != null) {
                                                        int r3 = textFieldPreparedSelection2.r(textLayoutResultProxy3, -1);
                                                        textFieldPreparedSelection2.o(r3, r3);
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 32:
                                                    if (textFieldPreparedSelection2.g.k.length() > 0 && (textLayoutResultProxy4 = textFieldPreparedSelection2.i) != null) {
                                                        int r4 = textFieldPreparedSelection2.r(textLayoutResultProxy4, 1);
                                                        textFieldPreparedSelection2.o(r4, r4);
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 33:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        textFieldPreparedSelection2.o(0, 0);
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 34:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    AnnotatedString annotatedString6 = textFieldPreparedSelection2.g;
                                                    if (annotatedString6.k.length() > 0) {
                                                        int length2 = annotatedString6.k.length();
                                                        textFieldPreparedSelection2.o(length2, length2);
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 35:
                                                    TextPreparedSelectionState textPreparedSelectionState4 = textFieldPreparedSelection2.e;
                                                    textPreparedSelectionState4.a = null;
                                                    AnnotatedString annotatedString7 = textFieldPreparedSelection2.g;
                                                    String str5 = annotatedString7.k;
                                                    String str6 = annotatedString7.k;
                                                    if (str5.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textPreparedSelectionState4.a = null;
                                                            if (str6.length() > 0 && (d3 = textFieldPreparedSelection2.d()) != null) {
                                                                int intValue5 = d3.intValue();
                                                                textFieldPreparedSelection2.o(intValue5, intValue5);
                                                            }
                                                        } else {
                                                            textPreparedSelectionState4.a = null;
                                                            if (str6.length() > 0 && (c3 = textFieldPreparedSelection2.c()) != null) {
                                                                int intValue6 = c3.intValue();
                                                                textFieldPreparedSelection2.o(intValue6, intValue6);
                                                            }
                                                        }
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 36:
                                                    TextPreparedSelectionState textPreparedSelectionState5 = textFieldPreparedSelection2.e;
                                                    textPreparedSelectionState5.a = null;
                                                    AnnotatedString annotatedString8 = textFieldPreparedSelection2.g;
                                                    String str7 = annotatedString8.k;
                                                    String str8 = annotatedString8.k;
                                                    if (str7.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textPreparedSelectionState5.a = null;
                                                            if (str8.length() > 0 && (c4 = textFieldPreparedSelection2.c()) != null) {
                                                                int intValue7 = c4.intValue();
                                                                textFieldPreparedSelection2.o(intValue7, intValue7);
                                                            }
                                                        } else {
                                                            textPreparedSelectionState5.a = null;
                                                            if (str8.length() > 0 && (d4 = textFieldPreparedSelection2.d()) != null) {
                                                                int intValue8 = d4.intValue();
                                                                textFieldPreparedSelection2.o(intValue8, intValue8);
                                                            }
                                                        }
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 37:
                                                    textFieldPreparedSelection2.h();
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 38:
                                                    textFieldPreparedSelection2.j();
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 39:
                                                    textFieldPreparedSelection2.m();
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 40:
                                                    textFieldPreparedSelection2.l();
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 41:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textFieldPreparedSelection2.m();
                                                        } else {
                                                            textFieldPreparedSelection2.l();
                                                        }
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 42:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        if (textFieldPreparedSelection2.e()) {
                                                            textFieldPreparedSelection2.l();
                                                        } else {
                                                            textFieldPreparedSelection2.m();
                                                        }
                                                    }
                                                    textFieldPreparedSelection2.n();
                                                    return unit;
                                                case 43:
                                                    textFieldPreparedSelection2.e.a = null;
                                                    if (textFieldPreparedSelection2.g.k.length() > 0) {
                                                        long j3 = textFieldPreparedSelection2.f;
                                                        int i = TextRange.c;
                                                        int i2 = (int) (j3 & 4294967295L);
                                                        textFieldPreparedSelection2.o(i2, i2);
                                                        return unit;
                                                    }
                                                    return unit;
                                                case 44:
                                                    if (!textFieldKeyInput2.e) {
                                                        textFieldKeyInput2.a(CollectionsKt.B(new CommitTextCommand("\n", 1)));
                                                        return unit;
                                                    }
                                                    ref$BooleanRef.j = ((Boolean) textFieldKeyInput2.a.x.b(new ImeAction(textFieldKeyInput2.l))).booleanValue();
                                                    return unit;
                                                case 45:
                                                    if (!textFieldKeyInput2.e) {
                                                        textFieldKeyInput2.a(CollectionsKt.B(new CommitTextCommand("\t", 1)));
                                                        return unit;
                                                    }
                                                    ref$BooleanRef.j = false;
                                                    return unit;
                                                case 46:
                                                    UndoManager undoManager2 = textFieldKeyInput2.h;
                                                    if (undoManager2 != null) {
                                                        undoManager2.a(TextFieldValue.a(textFieldPreparedSelection2.h, textFieldPreparedSelection2.g, textFieldPreparedSelection2.f, 4));
                                                    }
                                                    UndoManager undoManager3 = textFieldKeyInput2.h;
                                                    if (undoManager3 != null) {
                                                        UndoManager.Entry entry2 = undoManager3.a;
                                                        if (entry2 != null && (entry = entry2.a) != null) {
                                                            undoManager3.a = entry;
                                                            undoManager3.c -= entry2.b.a.k.length();
                                                            undoManager3.b = new UndoManager.Entry(undoManager3.b, entry2.b);
                                                            textFieldValue2 = entry.b;
                                                        }
                                                        if (textFieldValue2 != null) {
                                                            textFieldKeyInput2.k.b(textFieldValue2);
                                                            return unit;
                                                        }
                                                    }
                                                    return unit;
                                                case 47:
                                                    UndoManager undoManager4 = textFieldKeyInput2.h;
                                                    if (undoManager4 != null) {
                                                        UndoManager.Entry entry3 = undoManager4.b;
                                                        if (entry3 != null) {
                                                            undoManager4.b = entry3.a;
                                                            TextFieldValue textFieldValue3 = entry3.b;
                                                            undoManager4.a = new UndoManager.Entry(undoManager4.a, textFieldValue3);
                                                            undoManager4.c = textFieldValue3.a.k.length() + undoManager4.c;
                                                            textFieldValue2 = entry3.b;
                                                        }
                                                        if (textFieldValue2 != null) {
                                                            textFieldKeyInput2.k.b(textFieldValue2);
                                                            return unit;
                                                        }
                                                    }
                                                    return unit;
                                                default:
                                                    k8.e();
                                                    return null;
                                            }
                                        }
                                    };
                                    textFieldValue = textFieldKeyInput.c;
                                    TextFieldPreparedSelection textFieldPreparedSelection2 = new TextFieldPreparedSelection(textFieldValue, textFieldKeyInput.g, textFieldKeyInput.a.d(), textPreparedSelectionState);
                                    function12.b(textFieldPreparedSelection2);
                                    b = TextRange.b(textFieldPreparedSelection2.f, textFieldValue.b);
                                    annotatedString = textFieldPreparedSelection2.g;
                                    if (b) {
                                    }
                                    textFieldKeyInput.k.b(TextFieldValue.a(textFieldValue, annotatedString, textFieldPreparedSelection2.f, 4));
                                    undoManager = textFieldKeyInput.h;
                                    if (undoManager != null) {
                                    }
                                    z2 = obj22.j;
                                }
                            }
                            keyCommand = null;
                            if (keyCommand == null) {
                            }
                            if (keyCommand != null) {
                            }
                        }
                    }
                    z2 = false;
                }
                return Boolean.valueOf(z2);
            }
        }
        commitTextCommand = null;
        if (commitTextCommand == null) {
        }
        return Boolean.valueOf(z2);
    }
}
