.class public final synthetic Lj2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic k:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Brush;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj2;->j:Landroidx/compose/ui/graphics/Brush;

    .line 5
    .line 6
    iput-wide p2, p0, Lj2;->k:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->j:I

    .line 2
    .line 3
    iget-object v0, p0, Lj2;->j:Landroidx/compose/ui/graphics/Brush;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 6
    .line 7
    iget-wide v1, p0, Lj2;->k:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
