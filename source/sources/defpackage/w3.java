package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingFunctionsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlurEffect;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import coil3.Extras;
import coil3.SingletonImageLoader;
import coil3.compose.AsyncImageKt;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.AsyncImagePainter;
import coil3.compose.LocalAsyncImageModelEqualityDelegateKt;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.time.Instant;
import kotlin.time.InstantJvmKt;
import net.blip.android.ui.components.DropdownMenuKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.shared.AvatarKt;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w3 implements Function3 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Function1 k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ w3(Map map, Function1 function1, MutableState mutableState) {
        this.l = map;
        this.k = function1;
        this.m = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        final float f;
        String str;
        Extras.Builder builder;
        Function1 p2Var;
        c8 c8Var;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = 4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        final boolean z3 = true;
        Object obj4 = this.m;
        Function1 function1 = this.k;
        Object obj5 = this.l;
        final int i3 = 0;
        switch (i) {
            case 0:
                ByteString byteString = (ByteString) obj5;
                String str2 = (String) obj4;
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AvatarKt.a;
                boxWithConstraintsScope.getClass();
                if ((intValue & 6) == 0) {
                    if (!((GapComposer) composer).f(boxWithConstraintsScope)) {
                        i2 = 2;
                    }
                    intValue |= i2;
                }
                if ((intValue & 19) != 18) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    boolean f2 = gapComposer.f(byteString);
                    Object K = gapComposer.K();
                    if (f2 || K == composer$Companion$Empty$1) {
                        try {
                            byte[] r = byteString.r();
                            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(r, 0, r.length);
                            decodeByteArray.getClass();
                            K = new AndroidImageBitmap(decodeByteArray);
                        } catch (Exception e) {
                            LoggerKt.a.getClass();
                            Logger.d("RemoteAvatarImage", "loading placeholder image bitmap: " + e, new Pair[0]);
                            K = null;
                        }
                        gapComposer.g0(K);
                    }
                    ImageBitmap imageBitmap = (ImageBitmap) K;
                    boolean f3 = gapComposer.f(imageBitmap);
                    Object K2 = gapComposer.K();
                    if (f3 || K2 == composer$Companion$Empty$1) {
                        if (imageBitmap != null) {
                            K2 = new BitmapPainter(imageBitmap);
                        } else {
                            K2 = null;
                        }
                        gapComposer.g0(K2);
                    }
                    BitmapPainter bitmapPainter = (BitmapPainter) K2;
                    Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
                    if (imageBitmap != null) {
                        Bitmap bitmap = ((AndroidImageBitmap) imageBitmap).a;
                        f = density.U(Math.min(Constraints.h(boxWithConstraintsScope.a()), Constraints.g(boxWithConstraintsScope.a())) / Math.min(bitmap.getWidth(), bitmap.getHeight())) * 1.25f;
                    } else {
                        f = 0.0f;
                    }
                    int max = Math.max(Constraints.h(boxWithConstraintsScope.a()), Constraints.g(boxWithConstraintsScope.a()));
                    if (max >= 0 && max < 129) {
                        str = "s";
                    } else if (128 <= max && max < 257) {
                        str = "m";
                    } else {
                        str = "l";
                    }
                    String concat = "https://static.blip.net/avatars/".concat(str2 + "-" + str + ".jpg");
                    boolean f4 = gapComposer.f(concat);
                    Object K3 = gapComposer.K();
                    if (f4 || K3 == composer$Companion$Empty$1) {
                        K3 = InstantJvmKt.a.a();
                        gapComposer.g0(K3);
                    }
                    Instant instant = (Instant) K3;
                    boolean f5 = gapComposer.f(instant);
                    Object K4 = gapComposer.K();
                    if (f5 || K4 == composer$Companion$Empty$1) {
                        K4 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer.g0(K4);
                    }
                    MutableState mutableState = (MutableState) K4;
                    boolean f6 = gapComposer.f(instant);
                    Object K5 = gapComposer.K();
                    if (f6 || K5 == composer$Companion$Empty$1) {
                        K5 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer.g0(K5);
                    }
                    final MutableState mutableState2 = (MutableState) K5;
                    if (((Boolean) mutableState.getValue()).booleanValue()) {
                        f = 0.0f;
                    }
                    final State a = AnimateAsStateKt.a(f, AnimationSpecKt.c(350, 0, EasingFunctionsKt.a, 2), gapComposer, 0);
                    boolean f7 = gapComposer.f(mutableState2) | gapComposer.f(a) | gapComposer.c(f);
                    Object K6 = gapComposer.K();
                    if (f7 || K6 == composer$Companion$Empty$1) {
                        K6 = new Function0() { // from class: y3
                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                float f8;
                                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AvatarKt.a;
                                if (((Boolean) mutableState2.getValue()).booleanValue()) {
                                    f8 = ((Dp) a.getValue()).j;
                                } else {
                                    f8 = f;
                                }
                                return new Dp(f8);
                            }
                        };
                        gapComposer.g0(K6);
                    }
                    final float f8 = ((Dp) SnapshotStateKt.e((Function0) K6).getValue()).j;
                    if (Dp.a(f8, 0.0f) > 0) {
                        Dp.a(f8, 0.0f);
                    }
                    Modifier c = SizeKt.c(GraphicsLayerModifierKt.a(Modifier.Companion.b, new Function1() { // from class: m4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj6) {
                            BlurEffect blurEffect;
                            ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) ((GraphicsLayerScope) obj6);
                            float density2 = reusableGraphicsLayerScope.C.getDensity() * f8;
                            float density3 = reusableGraphicsLayerScope.C.getDensity() * f8;
                            if (density2 > 0.0f && density3 > 0.0f) {
                                blurEffect = new BlurEffect(density2, density3, i3);
                            } else {
                                blurEffect = null;
                            }
                            reusableGraphicsLayerScope.e(blurEffect);
                            reusableGraphicsLayerScope.l(RectangleShapeKt.a);
                            reusableGraphicsLayerScope.d(z3);
                            return Unit.a;
                        }
                    }), 1.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.b;
                    ImageRequest.Builder builder2 = new ImageRequest.Builder((Context) gapComposer.j(staticProvidableCompositionLocal));
                    builder2.c = concat;
                    Extras.Key key = ImageRequests_androidKt.a;
                    Object obj6 = builder2.o;
                    if (obj6 instanceof Extras.Builder) {
                        builder = (Extras.Builder) obj6;
                    } else if (obj6 instanceof Extras) {
                        Extras.Builder builder3 = new Extras.Builder((Extras) obj6);
                        builder2.o = builder3;
                        builder = builder3;
                    } else {
                        throw new AssertionError();
                    }
                    builder.b(ImageRequests_androidKt.g, Boolean.FALSE);
                    ImageRequest a2 = builder2.a();
                    boolean h = gapComposer.h(instant) | gapComposer.f(mutableState2) | gapComposer.f(function1) | gapComposer.f(mutableState);
                    Object K7 = gapComposer.K();
                    if (h || K7 == composer$Companion$Empty$1) {
                        K7 = new s2(instant, function1, mutableState2, mutableState);
                        gapComposer.g0(K7);
                    }
                    Function1 function12 = (Function1) K7;
                    AsyncImageState asyncImageState = new AsyncImageState(a2, (AsyncImageModelEqualityDelegate) gapComposer.j(LocalAsyncImageModelEqualityDelegateKt.a), SingletonImageLoader.a((Context) gapComposer.j(staticProvidableCompositionLocal)));
                    int i4 = UtilsKt.b;
                    if (bitmapPainter == null && bitmapPainter == null && bitmapPainter == null) {
                        p2Var = AsyncImagePainter.E;
                    } else {
                        p2Var = new p2(bitmapPainter, bitmapPainter, bitmapPainter, 18);
                    }
                    Function1 function13 = p2Var;
                    if (function12 == null) {
                        c8Var = null;
                    } else {
                        c8Var = new c8(function12, 8);
                    }
                    AsyncImageKt.a(asyncImageState, "", c, function13, c8Var, Alignment.Companion.e, ContentScale.Companion.a, gapComposer, 1572912, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Map map = (Map) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(1 & intValue2, z2)) {
                    boolean f9 = gapComposer2.f(function1);
                    Object K8 = gapComposer2.K();
                    if (f9 || K8 == composer$Companion$Empty$1) {
                        K8 = new lc(4, mutableState3, function1);
                        gapComposer2.g0(K8);
                    }
                    DropdownMenuKt.b(null, map, (Function1) K8, gapComposer2, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ w3(ByteString byteString, String str, Function1 function1) {
        this.l = byteString;
        this.m = str;
        this.k = function1;
    }
}
