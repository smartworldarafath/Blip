package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BasicTextContextMenuProvider implements TextContextMenuProvider {
    public final ComposableLambdaImpl a;
    public final MutatorMutex b = new MutatorMutex();
    public final MutableState c = SnapshotStateKt.g(null);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SessionImpl implements TextContextMenuSession {
        public final TextContextMenuDataProvider a;
        public final BufferedChannel b = ChannelKt.a(0, 7, null);

        public SessionImpl(TextContextMenuDataProvider textContextMenuDataProvider) {
            this.a = textContextMenuDataProvider;
        }

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.b.j(Unit.a);
        }
    }

    public BasicTextContextMenuProvider(ComposableLambdaImpl composableLambdaImpl) {
        this.a = composableLambdaImpl;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object a(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Object b = MutatorMutex.b(this.b, new BasicTextContextMenuProvider$showTextContextMenu$2(this, new SessionImpl(textContextMenuDataProvider), null), suspendLambda);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return Unit.a;
    }

    public final void b(final Function0 function0, Composer composer, final int i) {
        int i2;
        boolean z;
        final Function0 function02;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(723898654);
        if (gapComposer.f(this)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i3 = i2 | i;
        final int i4 = 0;
        final int i5 = 1;
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            SessionImpl sessionImpl = (SessionImpl) ((SnapshotMutableStateImpl) this.c).getValue();
            if (sessionImpl == null) {
                RecomposeScopeImpl r = gapComposer.r();
                if (r != null) {
                    r.d = new Function2(this, function0, i, i4) { // from class: c4
                        public final /* synthetic */ int j;
                        public final /* synthetic */ BasicTextContextMenuProvider k;
                        public final /* synthetic */ Function0 l;

                        {
                            this.j = i4;
                            this.k = this;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i6 = this.j;
                            Unit unit = Unit.a;
                            Function0 function03 = this.l;
                            BasicTextContextMenuProvider basicTextContextMenuProvider = this.k;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i6) {
                                case 0:
                                    basicTextContextMenuProvider.b(function03, composer2, RecomposeScopeImplKt.a(7));
                                    return unit;
                                default:
                                    basicTextContextMenuProvider.b(function03, composer2, RecomposeScopeImplKt.a(7));
                                    return unit;
                            }
                        }
                    };
                    return;
                }
                return;
            }
            function02 = function0;
            this.a.q(sessionImpl, sessionImpl.a, function02, gapComposer, 384);
        } else {
            function02 = function0;
            gapComposer.Q();
        }
        RecomposeScopeImpl r2 = gapComposer.r();
        if (r2 != null) {
            r2.d = new Function2(this, function02, i, i5) { // from class: c4
                public final /* synthetic */ int j;
                public final /* synthetic */ BasicTextContextMenuProvider k;
                public final /* synthetic */ Function0 l;

                {
                    this.j = i5;
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i6 = this.j;
                    Unit unit = Unit.a;
                    Function0 function03 = this.l;
                    BasicTextContextMenuProvider basicTextContextMenuProvider = this.k;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i6) {
                        case 0:
                            basicTextContextMenuProvider.b(function03, composer2, RecomposeScopeImplKt.a(7));
                            return unit;
                        default:
                            basicTextContextMenuProvider.b(function03, composer2, RecomposeScopeImplKt.a(7));
                            return unit;
                    }
                }
            };
        }
    }
}
