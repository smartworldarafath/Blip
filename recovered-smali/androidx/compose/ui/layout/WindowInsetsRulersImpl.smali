.class final Landroidx/compose/ui/layout/WindowInsetsRulersImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/layout/WindowInsetsRulers;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroidx/compose/ui/layout/RectRulers;

.field public final d:Landroidx/compose/ui/layout/RectRulers;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->b:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->c:Landroidx/compose/ui/layout/RectRulers;

    .line 12
    .line 13
    const-string v0, " maximum"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v0, Landroidx/compose/ui/layout/RectRulersImpl;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/RectRulersImpl;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->d:Landroidx/compose/ui/layout/RectRulers;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->c:Landroidx/compose/ui/layout/RectRulers;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Landroidx/compose/ui/layout/RectRulers;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->d:Landroidx/compose/ui/layout/RectRulers;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/WindowInsetsRulersImpl;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
