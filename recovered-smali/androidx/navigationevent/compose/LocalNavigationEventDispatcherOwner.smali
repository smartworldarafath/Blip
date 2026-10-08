.class public abstract Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    sget-object v2, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner_androidKt;->a:Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner_androidKt$NavigationEventDispatcherOwnerHostDefaultKey$1;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lc;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Landroidx/navigationevent/compose/LocalNavigationEventDispatcherOwner;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 16
    .line 17
    return-void
.end method
