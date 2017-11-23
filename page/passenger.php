<?php if (!empty($passenger)) : ?>
    <section id="category_<?php echo $passenger['id_category'] ?>">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase"><?php echo $passenger['category'] ?></h2>
                    <h3 class="section-subheading text-muted">Các trạm dừng chân đón khách của HTX Đức Linh</h3>
                </div>
            </div>
            <div class="row text-center">
                <?php if (!empty($contentPassenger)) : ?>
                    <?php foreach ($contentPassenger as $value) : ?>
                        <div class="col-md-3">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-square fa-stack-2x text-primary"></i>
                                <i class="fa fa-car fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="service-heading"><?php echo $value['product']?></h4>
                            <p class="fa fa-mobile-phone text-muted"> <?php echo formatPhoneNumber($value['phone'])?></p>
                            <p class="text-muted"><?php echo $value['time']?></p>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>
    </section>
<?php endif; ?>