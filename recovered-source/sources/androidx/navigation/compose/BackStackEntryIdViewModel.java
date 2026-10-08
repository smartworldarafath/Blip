package androidx.navigation.compose;

import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.lifecycle.internal.SavedStateHandleImpl_androidKt;
import androidx.navigation.compose.internal.WeakReference;
import defpackage.fe;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackStackEntryIdViewModel extends ViewModel {
    public final String b = "SaveableStateHolder_BackStackEntryKey";
    public final String c;
    public WeakReference d;

    public BackStackEntryIdViewModel(SavedStateHandle savedStateHandle) {
        Object obj;
        savedStateHandle.getClass();
        SavedStateHandleImpl savedStateHandleImpl = savedStateHandle.b;
        LinkedHashMap linkedHashMap = savedStateHandleImpl.a;
        LinkedHashMap linkedHashMap2 = savedStateHandleImpl.d;
        try {
            MutableStateFlow mutableStateFlow = (MutableStateFlow) linkedHashMap2.get("SaveableStateHolder_BackStackEntryKey");
            if (mutableStateFlow == null || (obj = mutableStateFlow.getValue()) == null) {
                obj = linkedHashMap.get("SaveableStateHolder_BackStackEntryKey");
            }
        } catch (ClassCastException unused) {
            linkedHashMap.remove("SaveableStateHolder_BackStackEntryKey");
            savedStateHandleImpl.c.remove("SaveableStateHolder_BackStackEntryKey");
            linkedHashMap2.remove("SaveableStateHolder_BackStackEntryKey");
            obj = null;
        }
        String str = (String) obj;
        if (str == null) {
            str = UUID.randomUUID().toString();
            String str2 = this.b;
            str2.getClass();
            if (str != null) {
                ArrayList arrayList = SavedStateHandleImpl_androidKt.a;
                if (arrayList == null || !arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((Class) it.next()).isInstance(str)) {
                        }
                    }
                }
                fe.u("Can't put value with type ", str.getClass(), " into saved state");
                throw null;
            }
            ArrayList arrayList2 = SavedStateHandleImpl_androidKt.a;
            Object obj2 = savedStateHandle.a.get(str2);
            MutableLiveData mutableLiveData = obj2 instanceof MutableLiveData ? (MutableLiveData) obj2 : null;
            if (mutableLiveData != null) {
                mutableLiveData.a(str);
            }
            savedStateHandleImpl.a(str, str2);
        }
        this.c = str;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void b() {
        WeakReference weakReference = this.d;
        if (weakReference != null) {
            SaveableStateHolder saveableStateHolder = (SaveableStateHolder) weakReference.a.get();
            if (saveableStateHolder != null) {
                saveableStateHolder.f(this.c);
            }
            WeakReference weakReference2 = this.d;
            if (weakReference2 != null) {
                weakReference2.a.clear();
                return;
            } else {
                Intrinsics.e("saveableStateHolderRef");
                throw null;
            }
        }
        Intrinsics.e("saveableStateHolderRef");
        throw null;
    }
}
