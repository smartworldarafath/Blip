package androidx.core.view.inputmethod;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.os.Bundle;
import android.util.Log;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import defpackage.p;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public abstract class InputConnectionCompat {
    public static InputConnection a(AppCompatEditText appCompatEditText, InputConnection inputConnection, EditorInfo editorInfo) {
        final p pVar = new p(12, appCompatEditText);
        return new InputConnectionWrapper(inputConnection) { // from class: androidx.core.view.inputmethod.InputConnectionCompat.1
            @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
            public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
                InputContentInfoCompat inputContentInfoCompat;
                Bundle bundle2;
                if (inputContentInfo == null) {
                    inputContentInfoCompat = null;
                } else {
                    inputContentInfoCompat = new InputContentInfoCompat(new InputContentInfoCompat.InputContentInfoCompatApi25Impl(inputContentInfo));
                }
                AppCompatEditText appCompatEditText2 = (AppCompatEditText) pVar.k;
                if ((i & 1) != 0) {
                    try {
                        inputContentInfoCompat.a.a.requestPermission();
                        InputContentInfo inputContentInfo2 = inputContentInfoCompat.a.a;
                        if (bundle == null) {
                            bundle2 = new Bundle();
                        } else {
                            bundle2 = new Bundle(bundle);
                        }
                        bundle2.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", inputContentInfo2);
                    } catch (Exception e) {
                        Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                    }
                } else {
                    bundle2 = bundle;
                }
                InputContentInfo inputContentInfo3 = inputContentInfoCompat.a.a;
                ContentInfoCompat.Builder builder = new ContentInfoCompat.Builder(new ClipData(inputContentInfo3.getDescription(), new ClipData.Item(inputContentInfo3.getContentUri())), 2);
                builder.d(inputContentInfo3.getLinkUri());
                builder.b(bundle2);
                if (ViewCompat.j(appCompatEditText2, builder.a()) == null) {
                    return true;
                }
                return super.commitContent(inputContentInfo, i, bundle);
            }
        };
    }
}
