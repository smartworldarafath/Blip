package defpackage;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.MotionEvent;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.lazy.layout.f;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.modifier.AddTextContextMenuDataComponentsNode;
import androidx.compose.foundation.text.input.internal.RecordingInputConnection;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.ControlledComposition;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.ShadowGraphicsLayerElement;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.AndroidUriHandler;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.input.EditCommand;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigator;
import androidx.room.RoomConnectionManager;
import androidx.sqlite.db.SupportSQLiteDatabase;
import io.sentry.kotlin.multiplatform.SentryEvent;
import io.sentry.kotlin.multiplatform.protocol.User;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.serialization.descriptors.SerialDescriptor;
import net.blip.android.ui.util.CaptureScope;
import net.blip.libblip.SentryConfig;
import net.blip.shared.AvatarTheme;
import net.blip.shared.Paintable;
import net.blip.shared.SelectionListState;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ma implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ ma(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        boolean z = false;
        boolean z2 = true;
        User user = null;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) obj2;
                if (saveableStateRegistry != null) {
                    z2 = saveableStateRegistry.b(obj);
                }
                return Boolean.valueOf(z2);
            case 1:
                return ((MatcherMatchResult$groups$1) obj2).c(((Integer) obj).intValue());
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                cacheDrawScope.getClass();
                AndroidPaint a = AndroidPaint_androidKt.a();
                a.g((ColorFilter) obj2);
                return cacheDrawScope.a(new ma(3, a));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AndroidPaint androidPaint = (AndroidPaint) obj2;
                ContentDrawScope contentDrawScope = (ContentDrawScope) obj;
                contentDrawScope.getClass();
                CanvasDrawScope canvasDrawScope = ((LayoutNodeDrawScope) contentDrawScope).j;
                Canvas a2 = canvasDrawScope.k.a();
                try {
                    a2.c(RectKt.a(0L, canvasDrawScope.i()), androidPaint);
                    ((LayoutNodeDrawScope) contentDrawScope).a();
                    a2.r();
                    return Unit.a;
                } catch (Throwable th) {
                    a2.r();
                    throw th;
                }
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ContentDrawScope contentDrawScope2 = (ContentDrawScope) obj;
                contentDrawScope2.getClass();
                ((LayoutNodeDrawScope) contentDrawScope2).a();
                DrawScope.O(contentDrawScope2, (SolidColor) obj2, 0L, 0L, 0.0f, null, 62);
                return Unit.a;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Navigator navigator = (Navigator) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                NavDestination navDestination = navBackStackEntry.k;
                if (navDestination == null) {
                    navDestination = null;
                }
                if (navDestination == null) {
                    return null;
                }
                navBackStackEntry.b();
                NavDestination c = navigator.c(navDestination);
                if (c == null) {
                    return null;
                }
                if (c.equals(navDestination)) {
                    return navBackStackEntry;
                }
                return navigator.b().a(c, c.b(navBackStackEntry.b()));
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((MutableObjectList) obj2).g((Modifier.Element) obj);
                return Boolean.TRUE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Context context = (Context) obj2;
                ((Boolean) obj).getClass();
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                context.startActivity(intent);
                return Unit.a;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                String str = (String) obj;
                str.getClass();
                ((AndroidUriHandler) ((UriHandler) obj2)).a(str);
                return Unit.a;
            case KeyModifiers.a /* 9 */:
                Paintable paintable = (Paintable) obj2;
                ((AvatarTheme.Appearance) obj).getClass();
                return paintable;
            case KeyModifiers.b /* 10 */:
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj2;
                int intValue = ((Integer) obj).intValue();
                return serialDescriptor.g(intValue) + ": " + serialDescriptor.j(intValue).a();
            case 11:
                ((m2) ((PointerInteropFilter) obj2).g()).b((MotionEvent) obj);
                return Unit.a;
            case KeyModifiers.c /* 12 */:
                MutableStateFlow mutableStateFlow = Recomposer.z;
                ((CompositionImpl) ((ControlledComposition) obj2)).d(obj);
                return Unit.a;
            case 13:
                Recomposer recomposer = (Recomposer) obj2;
                Throwable th2 = (Throwable) obj;
                MutableStateFlow mutableStateFlow2 = Recomposer.z;
                CancellationException cancellationException = new CancellationException("Recomposer effect job completed");
                cancellationException.initCause(th2);
                synchronized (recomposer.c) {
                    try {
                        Job job = recomposer.d;
                        if (job != null) {
                            recomposer.u.setValue(Recomposer.State.k);
                            job.n(cancellationException);
                            recomposer.r = null;
                            job.v0(new ec(9, recomposer, th2));
                        } else {
                            recomposer.e = cancellationException;
                            recomposer.u.setValue(Recomposer.State.j);
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                return Unit.a;
            case 14:
                ((RecordingInputConnection) obj2).b((EditCommand) obj);
                return Unit.a;
            case 15:
                SupportSQLiteDatabase supportSQLiteDatabase = (SupportSQLiteDatabase) obj;
                supportSQLiteDatabase.getClass();
                ((RoomConnectionManager) obj2).g = supportSQLiteDatabase;
                return Unit.a;
            case 16:
                ScrollState scrollState = (ScrollState) obj2;
                float floatValue = ((Float) obj).floatValue();
                float f = scrollState.f() + floatValue + scrollState.g;
                float c2 = RangesKt.c(f, 0.0f, ((SnapshotMutableIntStateImpl) scrollState.f).j());
                if (f == c2) {
                    z = true;
                }
                float f2 = c2 - scrollState.f();
                int round = Math.round(f2);
                ((SnapshotMutableIntStateImpl) scrollState.a).k(scrollState.f() + round);
                scrollState.g = f2 - round;
                if (!z) {
                    floatValue = f2;
                }
                return Float.valueOf(floatValue);
            case 17:
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj2;
                return new Offset(scrollingLogic.d(scrollingLogic.k, ((Offset) obj).a, scrollingLogic.j));
            case 18:
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                if (((MouseSelectionObserver) obj2).a(pointerInputChange.c)) {
                    pointerInputChange.a();
                }
                return Unit.a;
            case 19:
                Integer num = (Integer) obj;
                num.getClass();
                ((SnapshotMutableStateImpl) ((SelectionListState) obj2).a).setValue(num);
                return Unit.a;
            case 20:
                SemanticsPropertiesKt.c((SemanticsPropertyReceiver) obj, ((Role) obj2).a);
                return Unit.a;
            case 21:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                ((List) obj).add((Float) ((f) obj2).a());
                return true;
            case 22:
                SentryEvent sentryEvent = (SentryEvent) obj;
                sentryEvent.getClass();
                String str2 = (String) ((SentryConfig) obj2).d.a();
                if (str2 != null) {
                    user = new User(str2);
                }
                sentryEvent.k = user;
                return sentryEvent;
            case 23:
                obj.getClass();
                return ((n) obj2).a();
            case 24:
                ShadowGraphicsLayerElement shadowGraphicsLayerElement = (ShadowGraphicsLayerElement) obj2;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) ((GraphicsLayerScope) obj);
                reusableGraphicsLayerScope.j(reusableGraphicsLayerScope.C.getDensity() * shadowGraphicsLayerElement.b);
                reusableGraphicsLayerScope.l(shadowGraphicsLayerElement.c);
                reusableGraphicsLayerScope.d(shadowGraphicsLayerElement.d);
                reusableGraphicsLayerScope.c(shadowGraphicsLayerElement.e);
                reusableGraphicsLayerScope.m(shadowGraphicsLayerElement.f);
                return Unit.a;
            case 25:
                ((CaptureScope) obj2).a.a();
                return Boolean.FALSE;
            case 26:
                Drawable drawable = (Drawable) obj2;
                DrawScope drawScope = (DrawScope) obj;
                Canvas a3 = drawScope.l0().a();
                drawable.setBounds(0, 0, (int) Float.intBitsToFloat((int) (drawScope.i() >> 32)), (int) Float.intBitsToFloat((int) (drawScope.i() & 4294967295L)));
                drawable.draw(AndroidCanvas_androidKt.a(a3));
                return Unit.a;
            case 27:
                ((Function1) obj).b((TextContextMenuBuilderScope) obj2);
                return Unit.a;
            case 28:
                ma maVar = (ma) obj2;
                TraversableNode traversableNode = (TraversableNode) obj;
                if (traversableNode instanceof AddTextContextMenuDataComponentsNode) {
                    maVar.b(((AddTextContextMenuDataComponentsNode) traversableNode).x);
                    return Boolean.TRUE;
                }
                u2.l("TextContextMenuDataNode.TraverseKey key must only be attached to instances of TextContextMenuDataNode.");
                return null;
            default:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj2;
                float floatValue2 = ((Float) obj).floatValue();
                float a4 = textFieldScrollerPosition.a() + floatValue2;
                MutableFloatState mutableFloatState = textFieldScrollerPosition.b;
                if (a4 > ((SnapshotMutableFloatStateImpl) mutableFloatState).j()) {
                    floatValue2 = ((SnapshotMutableFloatStateImpl) mutableFloatState).j() - textFieldScrollerPosition.a();
                } else if (a4 < 0.0f) {
                    floatValue2 = -textFieldScrollerPosition.a();
                }
                ((SnapshotMutableFloatStateImpl) textFieldScrollerPosition.a).k(textFieldScrollerPosition.a() + floatValue2);
                return Float.valueOf(floatValue2);
        }
    }

    public /* synthetic */ ma(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
    }
}
