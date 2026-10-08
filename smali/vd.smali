.class public final synthetic Lvd;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic k:Landroidx/compose/ui/window/PopupLayout;

.field public final synthetic l:Landroidx/compose/ui/unit/IntRect;

.field public final synthetic m:J

.field public final synthetic n:J


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/IntRect;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvd;->j:Lkotlin/jvm/internal/Ref$LongRef;

    .line 5
    .line 6
    iput-object p2, p0, Lvd;->k:Landroidx/compose/ui/window/PopupLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lvd;->l:Landroidx/compose/ui/unit/IntRect;

    .line 9
    .line 10
    iput-wide p4, p0, Lvd;->m:J

    .line 11
    .line 12
    iput-wide p6, p0, Lvd;->n:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lvd;->k:Landroidx/compose/ui/window/PopupLayout;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/window/PopupLayout;->B:Landroidx/compose/ui/window/PopupPositionProvider;

    .line 4
    .line 5
    iget-object v5, v0, Landroidx/compose/ui/window/PopupLayout;->C:Landroidx/compose/ui/unit/LayoutDirection;

    .line 6
    .line 7
    iget-object v2, p0, Lvd;->l:Landroidx/compose/ui/unit/IntRect;

    .line 8
    .line 9
    iget-wide v3, p0, Lvd;->m:J

    .line 10
    .line 11
    iget-wide v6, p0, Lvd;->n:J

    .line 12
    .line 13
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/window/PopupPositionProvider;->a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget-object p0, p0, Lvd;->j:Lkotlin/jvm/internal/Ref$LongRef;

    .line 18
    .line 19
    iput-wide v0, p0, Lkotlin/jvm/internal/Ref$LongRef;->j:J

    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method
