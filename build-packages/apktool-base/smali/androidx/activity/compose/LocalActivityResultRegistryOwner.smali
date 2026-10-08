.class public abstract Landroidx/activity/compose/LocalActivityResultRegistryOwner;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx9;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx9;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/activity/compose/LocalActivityResultRegistryOwner;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    return-void
.end method
