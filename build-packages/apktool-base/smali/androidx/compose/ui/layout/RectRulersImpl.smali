.class final Landroidx/compose/ui/layout/RectRulersImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/RectRulers;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/compose/ui/layout/VerticalRuler;

.field public final c:Landroidx/compose/ui/layout/HorizontalRuler;

.field public final d:Landroidx/compose/ui/layout/VerticalRuler;

.field public final e:Landroidx/compose/ui/layout/HorizontalRuler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->b:Landroidx/compose/ui/layout/VerticalRuler;

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/ui/layout/HorizontalRuler;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->c:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 20
    .line 21
    new-instance p1, Landroidx/compose/ui/layout/VerticalRuler;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->d:Landroidx/compose/ui/layout/VerticalRuler;

    .line 27
    .line 28
    new-instance p1, Landroidx/compose/ui/layout/HorizontalRuler;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Landroidx/compose/ui/layout/Ruler;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/ui/layout/RectRulersImpl;->e:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/HorizontalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->e:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->b:Landroidx/compose/ui/layout/VerticalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Landroidx/compose/ui/layout/HorizontalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->c:Landroidx/compose/ui/layout/HorizontalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Landroidx/compose/ui/layout/VerticalRuler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->d:Landroidx/compose/ui/layout/VerticalRuler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "RectRulers("

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/layout/RectRulersImpl;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
