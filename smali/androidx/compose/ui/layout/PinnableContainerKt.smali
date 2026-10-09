.class public abstract Landroidx/compose/ui/layout/PinnableContainerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lvc;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lvc;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 13
    .line 14
    return-void
.end method
