# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

9.times do |i|
    Review.create(
        restaurant_name: "Restaurant #{i + 1}",
        review_date: "#{rand(1..28)}/#{rand(1..12)}/2023",
        review_body: '<h1>Quamvis enim depravatae non sint, pravae tamen esse possunt.</h1>

        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. <b>Tum Torquatus: Prorsus, inquit, assentior;</b> Duo Reges: constructio interrete. Audax negotium, dicerem impudens, nisi hoc institutum postea translatum ad philosophos nostros esset. Sed quid minus probandum quam esse aliquem beatum nec satis beatum? <a href="http://loripsum.net/" target="_blank">Omnes enim iucundum motum, quo sensus hilaretur.</a> <b>Cyrenaici quidem non recusant;</b> De ingenio eius in his disputationibus, non de moribus quaeritur. <mark>Facete M.</mark> </p>
        
        <ul>
            <li>Num igitur dubium est, quin, si in re ipsa nihil peccatur a superioribus, verbis illi commodius utantur?</li>
            <li>Quid enim necesse est, tamquam meretricem in matronarum coetum, sic voluptatem in virtutum concilium adducere?</li>
            <li>Et quidem iure fortasse, sed tamen non gravissimum est testimonium multitudinis.</li>
            <li>Quid, quod homines infima fortuna, nulla spe rerum gerendarum, opifices denique delectantur historia?</li>
        </ul>
        
        
        <h2>Uterque enim summo bono fruitur, id est voluptate.</h2>
        
        <p>Haeret in salebra. Quamquam ab iis philosophiam et omnes ingenuas disciplinas habemus; Reguli reiciendam; <i>Bork</i> Eorum enim est haec querela, qui sibi cari sunt seseque diligunt. Non semper, inquam; Beatus autem esse in maximarum rerum timore nemo potest. Non pugnem cum homine, cur tantum habeat in natura boni; Sin dicit obscurari quaedam nec apparere, quia valde parva sint, nos quoque concedimus; <a href="http://loripsum.net/" target="_blank">Respondent extrema primis, media utrisque, omnia omnibus.</a> </p>
        
        <p>Falli igitur possumus. <i>Iubet igitur nos Pythius Apollo noscere nosmet ipsos.</i> At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides. Sed vobis voluptatum perceptarum recordatio vitam beatam facit, et quidem corpore perceptarum. <b>Sint modo partes vitae beatae.</b> <a href="http://loripsum.net/" target="_blank">Quid igitur, inquit, eos responsuros putas?</a> Haec quo modo conveniant, non sane intellego. Illis videtur, qui illud non dubitant bonum dicere -; Si enim ad populum me vocas, eum. Quis animo aequo videt eum, quem inpure ac flagitiose putet vivere? </p>
        
        ',
        tenderloin_rating: "#{rand(1..5)}",
        sides_rating: "#{rand(1..5)}",
        menu_rating: "#{rand(1..5)}",
        price_rating: "#{rand(1..5)}",
        decor_rating: "#{rand(1..5)}",
        service_rating: "#{rand(1..5)}",
        total_rating:  "#{rand(1..5)}",
    )
end